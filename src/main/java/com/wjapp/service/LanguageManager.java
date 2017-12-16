package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Language;



public interface LanguageManager {
	
    Language load(Integer id);  
    Language get(Integer id);  
    List<Language> findAll();  
    void persist(Language entity);  
    Integer save(Language entity);  
    void saveOrUpdate(Language entity);  
    void delete(Integer id);  
    void flush(); 

}
