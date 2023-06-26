extern crate virtio_drivers;
extern crate embedded_sdmmc;

use core::any::Any;

pub trait BlockDevice: Send + Sync + Any {
    fn read_block(&self, block_id: usize, buf: &mut [u8]);
    fn write_block(&self, block_id: usize, buf: &[u8]);
}

use embedded_sdmmc::{Mode, SdCard, VolumeManager};