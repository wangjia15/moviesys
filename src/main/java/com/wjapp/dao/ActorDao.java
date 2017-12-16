package com.wjapp.dao;

import java.util.List;

import com.wjapp.beans.Actor;


public interface ActorDao extends BaseDao<Actor, Short> {
	
	public List<Object[]> getActorsByName(String name);

}
