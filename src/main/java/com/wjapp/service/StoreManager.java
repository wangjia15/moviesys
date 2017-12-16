package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Store;



public interface StoreManager {
	
    Store load(Integer id);  
    Store get(Integer id);  
    List<Store> findAll();  
    void persist(Store entity);  
    Integer save(Store entity);  
    void saveOrUpdate(Store entity);  
    void delete(Integer id);  
    void flush(); 

}
