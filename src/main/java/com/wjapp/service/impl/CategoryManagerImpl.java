package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Category;
import com.wjapp.dao.CategoryDao;
import com.wjapp.service.CategoryManager;

@Service("categoryManager")
public class CategoryManagerImpl implements CategoryManager {
	
	@Autowired
	CategoryDao dao;

	public Category load(Integer id) {
		
		return dao.load(id);
	}

	public Category get(Integer id) {
	
		return dao.get(id);
	}

	public List<Category> findAll() {
		
		return dao.findAll();
	}

	public void persist(Category entity) {
		dao.persist(entity);

	}

	public Integer save(Category entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Category entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}

}
