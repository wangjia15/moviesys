package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Schedule;
import com.wjapp.dao.ScheduleDao;
import com.wjapp.service.ScheduleManager;
import com.wjapp.viewmodel.ScheduleModel;

@Service("scheduleManager")
public class ScheduleManagerImpl implements ScheduleManager {
	
	@Autowired
	ScheduleDao dao;

	public Schedule load(Integer id) {
		
		return dao.load(id);
	}

	public Schedule get(Integer id) {
	
		return dao.get(id);
	}

	public List<Schedule> findAll() {
		
		return dao.findAll();
	}

	public void persist(Schedule entity) {
		dao.persist(entity);

	}

	public Integer save(Schedule entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Schedule entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}

	public List<ScheduleModel>  getScheduleByinfo(int playdatid, int storeid) {
		// TODO 自动生成的方法存根
		return dao.getScheduleByinfo(playdatid, storeid);
	}

}
