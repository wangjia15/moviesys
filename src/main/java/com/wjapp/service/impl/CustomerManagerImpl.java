package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Customer;
import com.wjapp.dao.CustomerDao;
import com.wjapp.service.CustomerManager;

@Service("customerManager")
public class CustomerManagerImpl implements CustomerManager {
	
	@Autowired
	CustomerDao dao;

	public Customer load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Customer get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Customer> findAll() {
		
		return dao.findAll();
	}

	public void persist(Customer entity) {
		dao.persist(entity);

	}

	public Integer save(Customer entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Customer entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

	public Customer loginAdmin(Customer admin) {
		// TODO 自动生成的方法存根
		return dao.loginAdmin(admin);
	}

}
