use alloc::task;

use crate::{
    config::{PAGE_SIZE, PAGE_SIZE_BITS},
    mm::{MapPermission, VirtAddr, VirtPageNum, memory_set::{MapArea, MapType}},
    task::{cpu::mycpu, task_list, myproc},
};

pub fn sys_brk(_brk: usize) -> isize {
    let tasks = task_list.exclusive_access();
    let end_: usize = tasks[mycpu().proc_idx].heap_pos.into();
    // let old_end = usize::from(VirtAddr::from(end_)) + PAGE_SIZE - 1;
    // //let new_end = ((_brk - 1 + PAGE_SIZE) / PAGE_SIZE) << PAGE_SIZE_BITS;

    if (_brk == 0) {
        return end_ as isize;
    }

    if (end_ == _brk) {
        0
    } else if (end_ < _brk) {
        let mset = &mut tasks[mycpu().proc_idx].memory_set;
        if (_brk < usize::from(VirtAddr::from(mset.get_areas_end())) + PAGE_SIZE) {
            tasks[mycpu().proc_idx].heap_pos.0 = _brk;
            return 0;
        } else {
            let flag = mset.append_to(
                VirtAddr::from(
                    mset.areas
                        .get(mset.areas.len() - 2)
                        .unwrap()
                        .vpn_range
                        .get_start(),
                ),
                VirtAddr::from(_brk),
            );
            // for v in mset.areas.iter(){
            //     println!("{} {}", usize::from(v.vpn_range.get_start()), usize::from(v.vpn_range.get_end()));
            // }
            if flag {
                tasks[mycpu().proc_idx].heap_pos.0 = _brk;
                return 0;
            } else {
                return -1;
            }
        }
    } else {
        // need to change
        let mset = &mut tasks[mycpu().proc_idx].memory_set;
        let flag = mset.shrink_to(
            VirtAddr::from(
                mset.areas
                    .get(mset.areas.len() - 2)
                    .unwrap()
                    .vpn_range
                    .get_start(),
            ),
            VirtAddr::from(_brk),
        );
        if flag {
            return 0;
        } else {
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

pub fn sys_mmap(start: usize, len: usize, prot: i32, flag: i32, fd: i32, off: usize) -> isize {
	let pcb=myproc();
	let startva= if start==0 {pcb.heap_pos} else{start.into()}.0;
	println!("startva:{:#x}",startva);
	// pcb.memory_set.push(MapArea::new(startva.into(), (startva+len).into(), MapType::Framed, MapPermission::R|MapPermission::W|MapPermission::U), 
	// 	None
	// );
	return startva as isize;
}

pub fn sys_munmap(start: *mut usize, len: usize) -> isize {
    return 0;
}
