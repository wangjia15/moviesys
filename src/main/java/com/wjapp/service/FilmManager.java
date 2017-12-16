package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Film;



public interface FilmManager {
	
    Film load(Integer id);  
    Film get(Integer id);  
    List<Film> findAll();  
    void persist(Film entity);  
    Integer save(Film entity);  
    void saveOrUpdate(Film entity);  
    void delete(Integer id);  
    void flush(); 
    
    public List<Object[]> getFilmsByName(String name);

}
