package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.City;



public interface CityManager {
	
    City load(Integer id);  
    City get(Integer id);  
    List<City> findAll();  
    void persist(City entity);  
    Integer save(City entity);  
    void saveOrUpdate(City entity);  
    void delete(Integer id);  
    void flush(); 

}
