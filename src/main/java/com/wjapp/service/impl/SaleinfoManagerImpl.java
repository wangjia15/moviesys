package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Saleinfo;
import com.wjapp.dao.SaleinfoDao;
import com.wjapp.service.SaleinfoManager;

@Service("saleinfoManager")
public class SaleinfoManagerImpl implements SaleinfoManager {
	
	@Autowired
	SaleinfoDao dao;

	public Saleinfo load(Integer id) {
		
		return dao.load(id);
	}

	public Saleinfo get(Integer id) {
	
		return dao.get(id);
	}

	public List<Saleinfo> findAll() {
		
		return dao.findAll();
	}

	public void persist(Saleinfo entity) {
		dao.persist(entity);

	}

	public Integer save(Saleinfo entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Saleinfo entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}

}
