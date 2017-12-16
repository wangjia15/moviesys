package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Country;
import com.wjapp.dao.CountryDao;
import com.wjapp.service.CountryManager;

@Service("countryManager")
public class CountryManagerImpl implements CountryManager {
	
	@Autowired
	CountryDao dao;

	public Country load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Country get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Country> findAll() {
		
		return dao.findAll();
	}

	public void persist(Country entity) {
		dao.persist(entity);

	}

	public Integer save(Country entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Country entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

}
