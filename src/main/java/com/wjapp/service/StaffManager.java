package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Staff;
import com.wjapp.viewmodel.Admin;



public interface StaffManager {
	
    Staff load(Integer id);  
    Staff get(Integer id);  
    List<Staff> findAll();  
    void persist(Staff entity);  
    Integer save(Staff entity);  
    void saveOrUpdate(Staff entity);  
    void delete(Integer id);  
    void flush(); 
    
    public  Admin loginAdmin(Admin admin);
    public List<Object[]> getStaffByName(String name);

}
