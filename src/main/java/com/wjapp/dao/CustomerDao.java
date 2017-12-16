package com.wjapp.dao;

import com.wjapp.beans.Customer;

public interface CustomerDao extends BaseDao<Customer, Short> {
	
	public Customer loginAdmin(Customer admin);

}
