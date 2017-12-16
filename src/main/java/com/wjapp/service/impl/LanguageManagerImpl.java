package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Language;
import com.wjapp.dao.LanguageDao;
import com.wjapp.service.LanguageManager;

@Service("languageManager")
public class LanguageManagerImpl implements LanguageManager {
	
	@Autowired
	LanguageDao dao;

	public Language load(Integer id) {
		
		return dao.load(id);
	}

	public Language get(Integer id) {
	
		return dao.get(id);
	}

	public List<Language> findAll() {
		
		return dao.findAll();
	}

	public void persist(Language entity) {
		dao.persist(entity);

	}

	public Integer save(Language entity) {
	
		return dao.save(entity);
	}

	public void saveOrUpdate(Language entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id);

	}

	public void flush() {
	dao.flush();

	}

}
