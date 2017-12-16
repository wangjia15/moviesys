package com.wjapp.dao;


import java.util.List;

import com.wjapp.beans.Film;

public interface FilmDao extends BaseDao<Film, Short> {
	
	public List<Object[]> getFilmsByName(String name);

}
