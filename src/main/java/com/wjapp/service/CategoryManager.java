package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Category;



public interface CategoryManager {
	
    Category load(Integer id);  
    Category get(Integer id);  
    List<Category> findAll();  
    void persist(Category entity);  
    Integer save(Category entity);  
    void saveOrUpdate(Category entity);  
    void delete(Integer id);  
    void flush(); 

}
