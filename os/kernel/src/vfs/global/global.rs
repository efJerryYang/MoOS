use std::collections::{BTreeMap, HashMap, HashSet};
use std::path::PathBuf;
use std::sync::{Arc, Mutex, RwLock};

// 虚拟文件系统的全局管理器
pub struct VfsGlobal {
    // 挂载点所有权链表
    mountpoints: Vec<Arc<RwLock<Mountpoint>>>,
    // 目录项管理器
    dcache: Arc<DentryCache>,
    // 页缓存
    page_cache: Arc<RwLock<HashMap<PathBuf, Arc<Mutex<HashSet<Arc<Page>>>>>>,
}

// Page结构体用于存储文件中一页的内容
struct Page {
    data: Arc<Mutex<Vec<u8>>>,
    lock: RwLock<()>,
    mapping: Arc<AddressSpace>,
    index: usize,
    flags: AtomicU32,
}

impl VfsGlobal {
    // 创建一个新的VfsGlobal实例
    pub fn new() -> Self {
        VfsGlobal {
            mountpoints: Vec::new(),
            dcache: Arc::new(DentryCache::new()),
            page_cache: Arc::new(Mutex::new(HashMap::new())),
        }
    }

    // 挂载文件系统
    pub fn mount(&mut self, fs: Arc<dyn Filesystem>, path: &PathBuf) -> Result<(), String> {
        // 检查挂载点是否已存在
        for mp in &self.mountpoints {
            let mp = mp.read().unwrap();
            if mp.path == *path {
                return Err("mount point already exists".into());
            }
        }

        // 创建新的挂载点
        let mp = Arc::new(RwLock::new(Mountpoint::new(fs, path)));
        self.mountpoints.push(mp.clone());

        Ok(())
    }

    // 卸载文件系统
    pub fn umount(&mut self, path: &PathBuf) -> Result<(), String> {
        let mut found = false;

        // 查找挂载点
        for i in 0..self.mountpoints.len() {
            let mp = self.mountpoints[i].read().unwrap();
            if mp.path == *path {
                found = true;
                // 检查是否有打开的文件
                if mp.num_open_files() > 0 {
                    return Err("mount point has open files".into());
                }
                // 卸载文件系统
                self.mountpoints.remove(i);
                break;
            }
        }
        if found {
            Ok(())
        } else {
            Err("mount point not found".into())
        }
    }

    // 根据路径获取文件的Dentry项（目录项）
    pub fn get_dentry(&self, path: &PathBuf) -> Option<Arc<Dentry>> {
        // 先从目录项缓存中查找
        if let Some(dentry) = self.dcache.get(path) {
            return Some(dentry);
        }
        // 从挂载点中查找
        for mp in &self.mountpoints {
            let mp = mp.read().unwrap();
            if path.starts_with(&mp.path) {
                let relative_path = path.strip_prefix(&mp.path).unwrap();
                if let Some(dentry) = mp.fs.get_dentry(relative_path) {
                    // 加入到目录项缓存
                    self.dcache.put(path.clone(), dentry.clone());
                    return Some(dentry);
                }
            }
        }
        None
    }

    // 从路径获取文件的Inode
    pub fn get_inode(&self, path: &PathBuf) -> Option<Arc<Inode>> {
        if let Some(dentry) = self.get_dentry(path) {
            Some(dentry.inode.clone())
        } else {
            None
        }
    }

    // 从路径打开文件
    pub fn open_file(&self, path: &PathBuf, flags: i32) -> Result<FileDescriptor, String> {
        if let Some(inode) = self.get_inode(path) {
            let file = inode.fs().open(inode.clone(), flags)?;
            let fd = self.allocate_fd(file);
            Ok(fd)
        } else {
            Err("file not found".into())
        }
    }

    // 分配一个新的文件描述符
    fn allocate_fd(&self, file: Arc<Mutex<dyn File>>) -> FileDescriptor {
        let mut fd = 0;
        while self.fd_map.contains_key(&fd) {
            fd += 1;
        }
        let fd = FileDescriptor(fd);
        self.fd_map.insert(fd, file);
        fd
    }

    // 释放一个文件描述符
    pub fn deallocate_fd(&self, fd: FileDescriptor) -> Result<(), String> {
        if self.fd_map.contains_key(&fd) {
            self.fd_map.remove(&fd);
            Ok(())
        } else {
            Err("invalid file descriptor".into())
        }
    }

    // 根据文件描述符获取文件
    pub fn get_file(&self, fd: FileDescriptor) -> Result<Arc<Mutex<dyn File>>, String> {
        if let Some(file) = self.fd_map.get(&fd) {
            Ok(file.clone())
        } else {
            Err("invalid file descriptor".into())
        }
    }

    // 根据文件描述符获取Inode
    pub fn get_inode_by_fd(&self, fd: FileDescriptor) -> Result<Arc<Inode>, String> {
        if let Some(file) = self.get_file(fd)? {
            Ok(file.lock().unwrap().inode())
        } else {
            Err("invalid file descriptor".into())
        }
    }

    // 从路径创建新文件
    pub fn create_file(&self, path: &PathBuf) -> Result<(), String> {
        if let Some(parent) = path.parent() {
            if let Some(parent_dentry) = self.get_dentry(parent) {
                let file_name = path.file_name().ok_or("invalid path")?;
                parent_dentry
                    .inode
                    .fs()
                    .create(parent_dentry.clone(), file_name)?;
                self.dcache.invalidate(parent);
                Ok(())
            } else {
                Err("parent directory not found".into())
            }
        } else {
            Err("invalid path".into())
        }
    }
}
