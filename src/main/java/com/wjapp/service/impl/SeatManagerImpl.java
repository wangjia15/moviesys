package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Seat;
import com.wjapp.dao.SeatDao;
import com.wjapp.service.SeatManager;

@Service("seatManager")
public class SeatManagerImpl implements SeatManager {
	
	@Autowired
	SeatDao dao;

	public Seat load(Integer id) {
		
		return dao.load(id);
	}

	public Seat get(Integer id) {
	
		return dao.get(id);
	}

	public List<Seat> findAll() {
		
		return dao.findAll();
	}

	public void persist(Seat entity) {
		dao.persist(entity);

	}

	public Integer save(Seat entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Seat entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}

}
