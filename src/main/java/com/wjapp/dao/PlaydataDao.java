package com.wjapp.dao;

import java.util.List;

import com.wjapp.beans.Playdata;

public interface PlaydataDao extends BaseDao<Playdata, Integer> {
	
	public List<Object[]> getPlaydataByName(String name);

}
