/**
 * 
 */
package com.wjapp.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.wjapp.beans.Film;
import com.wjapp.beans.Staff;
import com.wjapp.dao.FilmDao;

/**
 * @author wj
 *
 */
@Repository()  
public class FilmDaoImpl extends HibernateDaoSupport implements FilmDao {

	@Autowired
    public void setSessionFacotry(SessionFactory sessionFacotry) {  
        super.setSessionFactory(sessionFacotry);  
    }   
      
    private Session getCurrentSession() {  
        return this.getSessionFactory().getCurrentSession();
    }  
	
	
	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#load(java.io.Serializable)
	 */
	public Film load(Short id) {
		// TODO 自动生成的方法存根
		return (Film)this.getCurrentSession().load(Film.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Film get(Short id) {
		// TODO 自动生成的方法存根
		return (Film)this.getCurrentSession().get(Film.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Film> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Film ";
		return (List<Film>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Film entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(Film entity) {
		// TODO 自动生成的方法存根
		return (Short)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Film entity) {
		this.getCurrentSession().saveOrUpdate(entity);
		
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#delete(java.io.Serializable)
	 */
	public void delete(Short id) {
		this.getCurrentSession().delete(this.get(id));

	}

	public void flush() {
		this.getCurrentSession().flush();
		
	}

	public List<Object[]> getFilmsByName(String name) {
		
		String hql = "select film.filmId,film.title from Film film where film.title like'%"
				+ name+"%'";
		List<Object[]> filmlist = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
	
		return filmlist;
	}

}
