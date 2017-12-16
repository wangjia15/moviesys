package com.wjapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjapp.beans.Address;
import com.wjapp.dao.AddressDao;
import com.wjapp.service.AddressManager;

@Service("addressManager")
public class AddressManagerImpl implements AddressManager {
	
	@Autowired
	AddressDao dao;

	public Address load(Integer id) {
		
		return dao.load(id.shortValue());
	}

	public Address get(Integer id) {
	
		return dao.get(id.shortValue());
	}

	public List<Address> findAll() {
		
		return dao.findAll();
	}

	public void persist(Address entity) {
		dao.persist(entity);

	}

	public Integer save(Address entity) {
	
		return dao.save(entity).intValue();
	}

	public void saveOrUpdate(Address entity) {
		dao.saveOrUpdate(entity);

	}

	public void delete(Integer id) {
		dao.delete(id.shortValue());

	}

	public void flush() {
	dao.flush();

	}

	public List<Object[]> getAddressByName(String name) {
		// TODO 自动生成的方法存根
		return dao.getAddressByName(name);
	}

}
