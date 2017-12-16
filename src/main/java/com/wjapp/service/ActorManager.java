package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Actor;



public interface ActorManager {
	
    Actor load(Integer id);  
    Actor get(Integer id);  
    List<Actor> findAll();  
    void persist(Actor entity);  
    Integer save(Actor entity);  
    void saveOrUpdate(Actor entity);  
    void delete(Integer id);  
    void flush(); 
    
    public List<Object[]> getActorsByName(String name);

}
