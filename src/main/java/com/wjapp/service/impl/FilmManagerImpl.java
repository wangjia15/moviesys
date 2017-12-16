package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Film;
import com.wjapp.dao.FilmDao;
import com.wjapp.service.FilmManager;

@Service("filmManager")
public class FilmManagerImpl implements FilmManager {
	
	@Autowired
	FilmDao dao;

	public Film load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Film get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Film> findAll() {
		
		return dao.findAll();
	}

	public void persist(Film entity) {
		dao.persist(entity);

	}

	public Integer save(Film entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Film entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

	public List<Object[]> getFilmsByName(String name) {
		// TODO 自动生成的方法存根
		return dao.getFilmsByName(name);
	}
	

}
