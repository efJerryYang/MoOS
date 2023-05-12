use crate::{
    console::print,
    fs::vfs::{INode, Metadata, Result, Timespec},
    sbi::console_getchar,
};
use _core::any::Any;
use alloc::{
    string::{String, ToString},
    sync::Arc,
    vec::Vec,
};
use spin::Mutex;
pub struct File {
    inode: Arc<Mutex<dyn INode>>,
    offset: usize,
    readable: bool,
    writable: bool,
}

impl File {
    pub fn new(inode: Arc<Mutex<dyn INode>>, readable: bool, writable: bool) -> Self {
        File {
            inode,
            offset: 0,
            readable,
            writable,
        }
    }

    pub fn read(&mut self, buf: &mut [u8]) -> Result<usize> {
        assert!(self.readable);
        let len = self.inode.lock().read_at(self.offset, buf)?;
        self.offset += len;
        Ok(len)
    }

    pub fn write(&mut self, buf: &[u8]) -> Result<usize> {
        assert!(self.writable);
        let len = self.inode.lock().write_at(self.offset, buf)?;
        self.offset += len;
        Ok(len)
    }

    pub fn info(&self) -> Result<Metadata> {
        self.inode.lock().metadata()
    }

    pub fn get_entry(&self, id: usize) -> Result<String> {
        self.inode.lock().get_entry(id)
    }
}
use super::vfs::{FsError, PollStatus};
use bitflags::*;
bitflags! {
    pub struct OpenFlags: u32 {
        const RDONLY = 0;
        const WRONLY = 1 << 0;
        const RDWR = 1 << 1;

        const CREATE = 1 << 6;
        const EXCLUSIVE = 1 << 7;
        const NOCTTY = 1 << 8;
        const EXCL = 1 << 9;

        const NONBLOCK = 1 << 11;

        const TEXT = 1 << 14;
        const BINARY = 1 << 15;
        const DSYNC = 1 << 16;
        const NOFOLLOW = 1 << 17;

        const CLOEXEC = 1 << 19;

        const DIR = 1 << 21;
    }
}

impl OpenFlags {
    pub fn readable(&self) -> bool {
        self.contains(OpenFlags::RDONLY) || self.contains(OpenFlags::RDWR)
    }
    pub fn writable(&self) -> bool {
        self.contains(OpenFlags::WRONLY) || self.contains(OpenFlags::RDWR)
    }
    pub fn new(flags: u32) -> OpenFlags {
        let mut new_flags = OpenFlags::from_bits_truncate(flags);
        new_flags
    }
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct RegFileINode {
    pub readable: bool,
    pub writable: bool,
    pub dir: String,
    pub name: String,
    // Time related
    pub atime: Timespec,
    pub mtime: Timespec,
    pub ctime: Timespec,
    // Open mode
    pub flags: OpenFlags,
    // File data
    pub file: Vec<u8>,
}
impl RegFileINode {
    pub fn new(
        dir: String,
        name: String,
        flags: OpenFlags,
        readable: bool,
        writable: bool,
    ) -> Self {
        RegFileINode {
            readable,
            writable,
            dir,
            name,
            atime: Timespec::default(),
            mtime: Timespec::default(),
            ctime: Timespec::default(),
            flags,
            file: Vec::new(),
        }
    }
}

impl INode for RegFileINode {
    fn read_at(&self, offset: usize, buf: &mut [u8]) -> Result<usize> {
        if !self.readable {
            return Err(FsError::InvalidParam);
        }
        let mut file = &self.file[offset..];
        let len = buf.len();
        let mut pos = 0;
        for b in file {
            if pos < len {
                buf[pos] = *b;
                pos += 1;
            } else {
                // buffer overflow
                return Ok(pos);
            }
        }
        return Ok(pos);
    }
    fn write_at(&self, offset: usize, buf: &[u8]) -> Result<usize> {
        if !self.writable {
            return Err(FsError::InvalidParam);
        }
        let mut file = &self.file;
        let len = buf.len();
        let mut pos = 0;
        while pos < len {
            // TODO 处理 offset 非 0 的情况
            // TODO 处理可变引用的问题
            // file.push(buf[pos]);
            pos += 1;
        }
        return Ok(pos);
    }
    fn poll(&self) -> Result<super::vfs::PollStatus> {
        return Ok(PollStatus::default());
    }
    fn as_any_ref(&self) -> &dyn _core::any::Any {
        return &1;
    }
    fn file_size(&self) -> usize {
        return self.file.len();
    }
    fn file_data(&mut self) -> &mut Vec<u8> {
        return &mut self.file;
    }
    fn unlink(&mut self, _name: &str) -> Result<()> {
        self.name = "null".to_string();
        return Ok(());
    }
    fn file_name(&self) -> String {
        return self.name.clone();
    }
}

pub struct TerminalINode {
    pub readable: bool,
    pub writable: bool,
    pub file: Vec<u8>,
}

impl TerminalINode {
    pub fn new_stdin() -> Self {
        Self {
            readable: true,
            writable: false,
            file: Vec::new(),
        }
    }

    pub fn new_stdout() -> Self {
        Self {
            readable: false,
            writable: true,
            file: Vec::new(),
        }
    }

    pub fn new_stderr() -> Self {
        Self {
            readable: false,
            writable: true,
            file: Vec::new(),
        }
    }
}
// terminal read
pub fn terminal_read(buf: &mut [u8]) -> Result<usize> {
    let mut len = 0;
    for b in buf {
        *b = console_getchar() as u8;
        len += 1;
    }
    Ok(len)
}

// terminal write
pub fn terminal_write(buf: &[u8]) -> Result<usize> {
    let mut len = 0;
    for b in buf {
        print!("{}", core::str::from_utf8(&[*b]).unwrap());
        len += 1;
    }
    Ok(len)
}

impl INode for TerminalINode {
    fn read_at(&self, _offset: usize, buf: &mut [u8]) -> Result<usize> {
        if !self.readable {
            return Err(FsError::InvalidParam);
        }

        let len = terminal_read(buf)?;

        Ok(len)
    }

    fn write_at(&self, _offset: usize, buf: &[u8]) -> Result<usize> {
        if !self.writable {
            return Err(FsError::InvalidParam);
        }

        let len = terminal_write(buf)?;

        Ok(len)
    }

    // Implement other required INode methods as needed or with default behavior.

    fn poll(&self) -> Result<PollStatus> {
        Ok(PollStatus::default())
    }

    fn as_any_ref(&self) -> &dyn _core::any::Any {
        return &1;
    }

    fn file_size(&self) -> usize {
        return 0;
    }

    fn file_data(&mut self) -> &mut Vec<u8> {
        return &mut self.file;
    }
    fn file_name(&self) -> String {
        return "null".to_string();
    }
}

#[repr(C)]
pub struct Dirent {
    pub d_ino: u64,    // 索引结点号
    pub d_off: i64,    // 到下一个dirent的偏移
    pub d_reclen: u16, // 当前dirent的长度
    pub d_type: u8,    // 文件类型
    // d_name: char[]; // 文件名, 该字段不包含在结构体中，因为它是一个不定长数组
    pub d_name: String,
}

impl Dirent {
    pub fn new() -> Self {
        Self {
            d_ino: 0,
            d_off: 0,
            d_reclen: 0,
            d_type: 0,
            d_name: ".".to_string(),
        }
    }
}

#[derive(Debug)]
#[repr(C)]
pub struct Stat {
    pub st_dev: u64,
    pub st_ino: u64,
    pub st_mode: u64,
    pub st_nlink: u32,
    pub st_uid: u32,
    pub st_gid: u32,
    pub st_rdev: u64,
    pub st_size: u64,
    pub st_blksize: u64,
    pub st_blocks: u64,
    pub st_atime_sec: u64,
    pub st_atime_nsec: u64,
    pub st_mtime_sec: u64,
    pub st_mtime_nsec: u64,
    pub st_ctime_sec: u64,
    pub st_ctime_nsec: u64,
}

impl Stat {
    pub fn new() -> Self {
        Self {
            st_dev: 1,
            st_ino: 1,
            st_mode: 1,
            st_nlink: 1,
            st_uid: 0,
            st_gid: 0,
            st_rdev: 0,
            st_size: 0,
            st_blksize: 0,
            st_blocks: 0,
            st_atime_sec: Timespec::default().sec as u64,
            st_atime_nsec: Timespec::default().nsec as u64,
            st_mtime_sec: Timespec::default().sec as u64,
            st_mtime_nsec: Timespec::default().nsec as u64,
            st_ctime_sec: Timespec::default().sec as u64,
            st_ctime_nsec: Timespec::default().nsec as u64,
        }
    }
}
