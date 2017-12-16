package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Playdata;
import com.wjapp.dao.PlaydataDao;
import com.wjapp.service.PlaydataManager;

@Service("playdataManager")
public class PlaydataManagerImpl implements PlaydataManager {
	
	@Autowired
	PlaydataDao dao;

	public Playdata load(Integer id) {
		
		return dao.load(id);
	}

	public Playdata get(Integer id) {
	
		return dao.get(id);
	}

	public List<Playdata> findAll() {
		
		return dao.findAll();
	}

	public void persist(Playdata entity) {
		dao.persist(entity);

	}

	public Integer save(Playdata entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Playdata entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}

	public List<Object[]> getPlaydataByName(String name) {
		// TODO 自动生成的方法存根
		return dao.getPlaydataByName(name);
	}

}
