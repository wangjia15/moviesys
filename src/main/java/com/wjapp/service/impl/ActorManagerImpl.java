package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wjapp.beans.Actor;
import com.wjapp.dao.ActorDao;
import com.wjapp.service.ActorManager;

@Service("actorManager")
//@Transactional(readOnly = false,propagation = Propagation.REQUIRED,rollbackFor = Exception.class)  
public class ActorManagerImpl implements ActorManager {
	
	@Autowired
	ActorDao dao;

	public Actor load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Actor get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Actor> findAll() {
		
		return dao.findAll();
	}

	public void persist(Actor entity) {
		dao.persist(entity);

	}

	public Integer save(Actor entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Actor entity) {
		dao.saveOrUpdate(entity);
		
		//dao.update(entity);

	}
	


//	@Transactional(rollbackFor=Exception.class)
	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

	public List<Object[]> getActorsByName(String name) {
		// TODO 自动生成的方法存根
		return dao.getActorsByName(name);
	}

}
