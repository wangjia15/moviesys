package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Payment;



public interface PaymentManager {
	
    Payment load(Integer id);  
    Payment get(Integer id);  
    List<Payment> findAll();  
    void persist(Payment entity);  
    Integer save(Payment entity);  
    void saveOrUpdate(Payment entity);  
    void delete(Integer id);  
    void flush(); 

}
