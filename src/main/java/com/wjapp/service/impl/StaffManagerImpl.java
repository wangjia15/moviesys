package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Staff;
import com.wjapp.dao.StaffDao;
import com.wjapp.service.StaffManager;
import com.wjapp.viewmodel.Admin;

@Service("staffManager")
public class StaffManagerImpl implements StaffManager {
	
	@Autowired
	StaffDao dao;

	public Staff load(Integer id) {
		
		return dao.load(id);
	}

	public Staff get(Integer id) {
	
		return dao.get(id);
	}

	public List<Staff> findAll() {
		
		return dao.findAll();
	}

	public void persist(Staff entity) {
		dao.persist(entity);

	}

	public Integer save(Staff entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Staff entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}
	
	public  Admin loginAdmin(Admin admin){
		return dao.loginAdmin(admin);
	}
	
	public List<Object[]> getStaffByName(String name){
		return dao.getStaffByName(name);
	}

}
