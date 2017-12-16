package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Playdata;



public interface PlaydataManager {
	
    Playdata load(Integer id);  
    Playdata get(Integer id);  
    List<Playdata> findAll();  
    void persist(Playdata entity);  
    Integer save(Playdata entity);  
    void saveOrUpdate(Playdata entity);  
    void delete(Integer id);  
    void flush(); 
    
	public List<Object[]> getPlaydataByName(String name);

}
