use core::any::Any;

pub trait BlockDevice: Send + Sync + Any {
    fn read_block(&self, block_id: usize, buf: &mut [u8]);
    fn write_block(&self, block_id: usize, buf: &[u8]);
}

struct ImageFileBlockDevice {
    file: File,
}
impl ImageFileBlockDevice {
    pub fn new(file_path: &str) -> std::io::Result<Self> {
        let file = File::open(file_path)?;
        Ok(Self { file })
    }
}

impl BlockDevice for ImageFileBlockDevice {
    fn read_block(&self, block_id: usize, buf: &mut [u8]) {
        let offset = block_id * 512; // 假设块大小为512字节
        self.file
            .seek(SeekFrom::Start(offset as u64))
            .expect("Seek failed");
        self.file.read_exact(buf).expect("Read failed");
    }

    fn write_block(&self, _block_id: usize, _buf: &[u8]) {
        panic!("Not supported");
    }
}

use embedded_sdmmc::{Mode, SdCard, VolumeManager};

use virtio_drivers::{VirtIOBlk, VirtIOHeader};

#[allow(unused)]
const VIRTIO0: usize = 0x10001000;

pub struct VirtIOBlock(Mutex<VirtIOBlk<'static>>);

static QUEUE_FRAMES: Mutex<Option<Frame>> = Mutex::new(None);

impl BlockDevice for VirtIOBlock {
    fn read_block(&self, block_id: usize, buf: &mut [u8]) {
        self.0
            .lock()
            .read_block(block_id, buf)
            .expect("Error when reading VirtIOBlk");
    }
    fn write_block(&self, block_id: usize, buf: &[u8]) {
        self.0
            .lock()
            .write_block(block_id, buf)
            .expect("Error when writing VirtIOBlk");
    }
}

impl VirtIOBlock {
    #[allow(unused)]
    pub fn new() -> Self {
        unsafe {
            Self(Mutex::new(
                VirtIOBlk::new(&mut *(VIRTIO0 as *mut VirtIOHeader)).unwrap(),
            ))
        }
    }
}

#[no_mangle]
/// 这里用 new_contiguous 可以要求分配一段连续的内存。
/// 因为这个函数是面向 virtio-drivers 的接口，而且仅在内核启动时初始化，
/// 所以这里默认可以拿到需要的空间，不处理分配失败导致的异常
pub extern "C" fn virtio_dma_alloc(pages: usize) -> PhysAddr {
    let frame = Frame::new_contiguous(pages, 0).unwrap();
    let paddr = frame.start_paddr();
    *QUEUE_FRAMES.lock() = Some(frame);
    paddr
}

#[no_mangle]
/// Frame 在 Drop 时会释放页帧，所以这里不用做其他处理
pub extern "C" fn virtio_dma_dealloc(_pa: PhysAddr, _pages: usize) -> i32 {
    *QUEUE_FRAMES.lock() = None;
    0
}

#[no_mangle]
/// 默认只在内核态才访问块设备，所以直接用内核固定偏移的虚拟地址
pub extern "C" fn virtio_phys_to_virt(paddr: PhysAddr) -> VirtAddr {
    phys_to_virt(paddr)
}

#[no_mangle]
/// 默认只在内核态才访问块设备，所以直接用内核固定偏移的虚拟地址
pub extern "C" fn virtio_virt_to_phys(vaddr: VirtAddr) -> PhysAddr {
    virt_to_phys(vaddr)
}

struct MyTimeSource;
impl TimeSource for MyTimeSource {
    fn get_timestamp(&self) -> Timestamp {
        Timestamp::default()
    }
}
