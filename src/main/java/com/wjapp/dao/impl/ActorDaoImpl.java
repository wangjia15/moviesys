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

import com.wjapp.beans.Actor;
import com.wjapp.dao.ActorDao;

/**
 * @author wj
 *
 */
@Repository() 
public class ActorDaoImpl extends HibernateDaoSupport implements ActorDao {
	
 
	 
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
	public Actor load(Short id) {
		// TODO 自动生成的方法存根
		return (Actor)this.getCurrentSession().load(Actor.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Actor get(Short id) {
		// TODO 自动生成的方法存根
		return (Actor)this.getCurrentSession().get(Actor.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Actor> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Actor ";
		return (List<Actor>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Actor entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(Actor entity) {
		// TODO 自动生成的方法存根
		
		Short s = (Short)this.getCurrentSession().save(entity);
		
		return s;
	}



	public void saveOrUpdate(Actor entity) {
		this.getCurrentSession().saveOrUpdate(entity);
		
	}
	
	public void Update(Actor entity) {
		this.getCurrentSession().update(entity);
	}
	

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#delete(java.io.Serializable)
	 */
	public void delete(Short id) {
		Actor a =this.get(id);
	
		logger.info(a);
		
		this.getCurrentSession().delete(a);;

	}

	public void flush() {
		this.getCurrentSession().flush();
		
	}
	
	public List<Object[]> getActorsByName(String name) {
		
		String hql = "select a.actorId,a.firstName from Actor a where a.firstName like'%"
				+ name+"%'";
		List<Object[]> filmlist = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
	
		return filmlist;
	}

}
