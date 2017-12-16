package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Customer;



public interface CustomerManager {
	
    Customer load(Integer id);  
    Customer get(Integer id);  
    List<Customer> findAll();  
    void persist(Customer entity);  
    Integer save(Customer entity);  
    void saveOrUpdate(Customer entity);  
    void delete(Integer id);  
    void flush(); 
    
	public Customer loginAdmin(Customer admin);

}
