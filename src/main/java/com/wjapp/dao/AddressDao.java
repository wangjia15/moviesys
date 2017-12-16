package com.wjapp.dao;

import java.util.List;

import com.wjapp.beans.Address;

public interface AddressDao extends BaseDao<Address, Short> {

	public List<Object[]> getAddressByName(String name);
}
