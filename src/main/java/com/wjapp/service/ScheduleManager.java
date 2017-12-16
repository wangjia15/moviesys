package com.wjapp.service;

import java.util.List;

import com.wjapp.beans.Schedule;
import com.wjapp.viewmodel.ScheduleModel;



public interface ScheduleManager {
	
    Schedule load(Integer id);  
    Schedule get(Integer id);  
    List<Schedule> findAll();  
    void persist(Schedule entity);  
    Integer save(Schedule entity);  
    void saveOrUpdate(Schedule entity);  
    void delete(Integer id);  
    void flush(); 
    
	public List<ScheduleModel>  getScheduleByinfo(int playdatid,int storeid);

}
