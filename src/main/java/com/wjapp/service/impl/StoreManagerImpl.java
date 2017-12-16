package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Store;
import com.wjapp.dao.StoreDao;
import com.wjapp.service.StoreManager;

@Service("storeManager")
public class StoreManagerImpl implements StoreManager {
	
	@Autowired
	StoreDao dao;

	public Store load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Store get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Store> findAll() {
		
		return dao.findAll();
	}

	public void persist(Store entity) {
		dao.persist(entity);

	}

	public Integer save(Store entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Store entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

}
