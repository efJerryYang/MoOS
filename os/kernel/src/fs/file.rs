use crate::fs::vfs::{INode, Metadata, Result, Timespec};
use _core::any::Any;
use alloc::{string::String, sync::Arc, vec::Vec};
pub struct File {
    inode: Arc<dyn INode>,
    offset: usize,
    readable: bool,
    writable: bool,
}

impl File {
    pub fn new(inode: Arc<dyn INode>, readable: bool, writable: bool) -> Self {
        File {
            inode,
            offset: 0,
            readable,
            writable,
        }
    }

    pub fn read(&mut self, buf: &mut [u8]) -> Result<usize> {
        assert!(self.readable);
        let len = self.inode.read_at(self.offset, buf)?;
        self.offset += len;
        Ok(len)
    }

    pub fn write(&mut self, buf: &[u8]) -> Result<usize> {
        assert!(self.writable);
        let len = self.inode.write_at(self.offset, buf)?;
        self.offset += len;
        Ok(len)
    }

    pub fn info(&self) -> Result<Metadata> {
        self.inode.metadata()
    }

    pub fn get_entry(&self, id: usize) -> Result<String> {
        self.inode.get_entry(id)
    }
}

use bitflags::*;

use super::vfs::{FsError, PollStatus};

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
}
