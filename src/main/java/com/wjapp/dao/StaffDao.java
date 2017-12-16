package com.wjapp.dao;


import java.util.List;

import com.wjapp.beans.Staff;
import com.wjapp.viewmodel.Admin;

public interface StaffDao extends BaseDao<Staff, Integer> {
	
	public  Admin loginAdmin(Admin admin);
	
	public List<Object[]> getStaffByName(String name);

}
