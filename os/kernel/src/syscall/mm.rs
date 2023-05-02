use alloc::task;

use crate::{task::{task_list, cpu::mycpu}, mm::{MapPermission, VirtAddr, VirtPageNum}, config::{PAGE_SIZE, PAGE_SIZE_BITS}};





pub fn sys_brk(_brk: usize) -> isize {
    let tasks = task_list.exclusive_access();
    let end_ = tasks[mycpu().proc_idx].memory_set.get_areas_end();
    let old_end = usize::from(VirtAddr::from(end_)) + PAGE_SIZE - 1;
    //let new_end = ((_brk - 1 + PAGE_SIZE) / PAGE_SIZE) << PAGE_SIZE_BITS;

    if(_brk == 0){
        // for v in tasks[mycpu().proc_idx].memory_set.areas.iter(){
        //     println!("{} {}", usize::from(v.vpn_range.get_start()), usize::from(v.vpn_range.get_end()));
        // }
        return old_end as isize;
    }
    

    if(old_end == _brk){
        return 0;
    }
    else if(old_end < _brk){
        let mset = &mut tasks[mycpu().proc_idx].memory_set;
        let flag = mset.append_to(
            VirtAddr::from(mset.areas.get(mset.areas.len() - 2).unwrap().vpn_range.get_start()), 
            VirtAddr::from(_brk)
        );
        // for v in mset.areas.iter(){
        //     println!("{} {}", usize::from(v.vpn_range.get_start()), usize::from(v.vpn_range.get_end()));
        // }
        if flag{
            return 0;
        }
        else{
            return -1;
        }
    }
    else{
        // need to change
        let mset = &mut tasks[mycpu().proc_idx].memory_set;
        let flag = mset.shrink_to(
            VirtAddr::from(mset.areas.get(mset.areas.len() - 2).unwrap().vpn_range.get_start()), 
            VirtAddr::from(_brk)
        );
        if flag{
            return 0;
        }
        else{
            return -1;
        }
        
        // if let Some(area) = mset
        //     .get_areas()
        //     .iter_mut()
        //     .find(|area| 
        //         (area.vpn_range.get_start() <= (_brk / PAGE_SIZE).into()) &&
        //         (area.vpn_range.get_end() >= (_brk / PAGE_SIZE).into()))
        // {
        //     area.shrink_to(, new_end.ceil());
        //     true
        // } else {
        //     false
        // }
    }
}

pub fn sys_mmap(start: *mut usize, len: usize, prot: i32, flag: i32, fd: i32, off: usize) -> isize{

    return 0;
}

pub fn sys_munmap(start: *mut usize, len: usize) -> isize{
    return 0;
}