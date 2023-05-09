extern crate alloc;

pub mod dev;
pub mod dirty;
pub mod file;
pub mod util;
pub mod vfs;

use vfs::INode;

use self::vfs::Timespec;
use alloc::sync::Arc;
use alloc::{string::String, vec::Vec};