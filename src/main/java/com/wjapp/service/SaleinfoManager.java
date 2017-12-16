package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Saleinfo;



public interface SaleinfoManager {
	
    Saleinfo load(Integer id);  
    Saleinfo get(Integer id);  
    List<Saleinfo> findAll();  
    void persist(Saleinfo entity);  
    Integer save(Saleinfo entity);  
    void saveOrUpdate(Saleinfo entity);  
    void delete(Integer id);  
    void flush(); 

}
