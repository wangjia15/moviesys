package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Hall;
import com.wjapp.dao.HallDao;
import com.wjapp.service.HallManager;

@Service("hallManager")
public class HallManagerImpl implements HallManager {
	
	@Autowired
	HallDao dao;

	public Hall load(Integer id) {
		
		return dao.load(id);
	}

	public Hall get(Integer id) {
	
		return dao.get(id);
	}

	public List<Hall> findAll() {
		
		return dao.findAll();
	}

	public void persist(Hall entity) {
		dao.persist(entity);

	}

	public Integer save(Hall entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Hall entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}
	
	public List<Object[]> getHallByName(String name) {
		return dao.getHallByName(name);
	}

}
