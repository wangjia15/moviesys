package com.wjapp.dao;

import java.util.List;

import com.wjapp.beans.Hall;

public interface HallDao extends BaseDao<Hall, Integer> {
	
	public List<Object[]> getHallByName(String name) ;

}
