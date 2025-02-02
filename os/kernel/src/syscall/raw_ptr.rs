use core::{convert::TryFrom, marker::PhantomData};

pub trait Policy: Clone + Copy + 'static {}

pub trait Read: Policy {}
pub trait Write: Policy {}

#[derive(Clone, Copy)]
pub struct In;
#[derive(Clone, Copy)]
pub struct Out;
#[derive(Clone, Copy)]
pub struct InOut;

impl Policy for In {}
impl Policy for Out {}
impl Policy for InOut {}
impl Read for In {}
impl Write for Out {}
impl Read for InOut {}
impl Write for InOut {}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct UserPtr<T: Clone + Copy + 'static, P: Policy> {
    ptr: *mut T,
    _mark: PhantomData<P>,
}

pub type UserReadPtr<T> = UserPtr<T, In>;
pub type UserWritePtr<T> = UserPtr<T, Out>;
pub type UserInOutPtr<T> = UserPtr<T, InOut>;

unsafe impl<T: Clone + Copy + 'static, P: Policy> Send for UserPtr<T, P> {}
unsafe impl<T: Clone + Copy + 'static, P: Policy> Sync for UserPtr<T, P> {}

impl<T: Clone + Copy + 'static, P: Policy> UserPtr<T, P> {
    pub fn null() -> Self {
        Self {
            ptr: core::ptr::null_mut(),
            _mark: PhantomData,
        }
    }
    pub fn from_usize(a: usize) -> Self {
        Self {
            ptr: a as *mut _,
            _mark: PhantomData,
        }
    }
    pub fn is_null(self) -> bool {
        self.ptr.is_null()
    }
    pub fn as_usize(self) -> usize {
        self.ptr as usize
    }
    pub fn raw_ptr(self) -> *const T {
        self.ptr
    }
    /// return None if UserAddr == nullptr
    pub fn as_ptr(self) -> Option<*const T> {
        Some(self.ptr)
    }
    pub fn offset(self, count: isize) -> Self {
        Self {
            ptr: unsafe { self.ptr.offset(count) },
            _mark: PhantomData,
        }
    }
    pub fn transmute<V: Clone + Copy + 'static>(self) -> UserPtr<V, P> {
        UserPtr {
            ptr: self.ptr as *mut V,
            _mark: PhantomData,
        }
    }
}

impl<T: Clone + Copy + 'static, P: Write> UserPtr<T, P> {
    pub fn raw_ptr_mut(self) -> *mut T {
        self.ptr
    }
}
impl<T: Clone + Copy + 'static, P: Policy> From<usize> for UserPtr<T, P> {
    fn from(a: usize) -> Self {
        Self {
            ptr: a as *mut T,
            _mark: PhantomData,
        }
    }
}
