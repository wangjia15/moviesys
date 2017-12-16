package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Country;



public interface CountryManager {
	
    Country load(Integer id);  
    Country get(Integer id);  
    List<Country> findAll();  
    void persist(Country entity);  
    Integer save(Country entity);  
    void saveOrUpdate(Country entity);  
    void delete(Integer id);  
    void flush(); 

}
