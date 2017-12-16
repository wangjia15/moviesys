package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Address;



public interface AddressManager {
	
    Address load(Integer id);  
    Address get(Integer id);  
    List<Address> findAll();  
    void persist(Address entity);  
    Integer save(Address entity);  
    void saveOrUpdate(Address entity);  
    void delete(Integer id);  
    void flush(); 
    
	public List<Object[]> getAddressByName(String name);

}
