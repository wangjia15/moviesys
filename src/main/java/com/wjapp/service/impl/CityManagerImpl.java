package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.City;
import com.wjapp.dao.CityDao;
import com.wjapp.service.CityManager;

@Service("cityManager")
public class CityManagerImpl implements CityManager {
	
	@Autowired
	CityDao dao;

	public City load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public City get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<City> findAll() {
		
		return dao.findAll();
	}

	public void persist(City entity) {
		dao.persist(entity);

	}

	public Integer save(City entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(City entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

}
