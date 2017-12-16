package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Payment;
import com.wjapp.dao.PaymentDao;
import com.wjapp.service.PaymentManager;

@Service("paymentManager")
public class PaymentManagerImpl implements PaymentManager {
	
	@Autowired
	PaymentDao dao;

	public Payment load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Payment get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Payment> findAll() {
		
		return dao.findAll();
	}

	public void persist(Payment entity) {
		dao.persist(entity);

	}

	public Integer save(Payment entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Payment entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

}
