package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Hall;



public interface HallManager {
	
    Hall load(Integer id);  
    Hall get(Integer id);  
    List<Hall> findAll();  
    void persist(Hall entity);  
    Integer save(Hall entity);  
    void saveOrUpdate(Hall entity);  
    void delete(Integer id);  
    void flush(); 
    
    public List<Object[]> getHallByName(String name) ;

}
