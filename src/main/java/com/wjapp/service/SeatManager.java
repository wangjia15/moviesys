package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Seat;



public interface SeatManager {
	
    Seat load(Integer id);  
    Seat get(Integer id);  
    List<Seat> findAll();  
    void persist(Seat entity);  
    Integer save(Seat entity);  
    void saveOrUpdate(Seat entity);  
    void delete(Integer id);  
    void flush(); 

}
