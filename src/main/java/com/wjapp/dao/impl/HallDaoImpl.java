/**
 * 
 */
package com.wjapp.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.wjapp.beans.Hall;
import com.wjapp.dao.HallDao;

/**
 * @author wj
 *
 */

@Repository()  
public class HallDaoImpl extends HibernateDaoSupport implements HallDao {

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
	public Hall load(Integer id) {
		// TODO 自动生成的方法存根
		return (Hall)this.getCurrentSession().load(Hall.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Hall get(Integer id) {
		// TODO 自动生成的方法存根
		return (Hall)this.getCurrentSession().get(Hall.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Hall> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Hall ";
		return (List<Hall>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Hall entity) {
		this.getCurrentSession().save(entity);
	}



	public Integer save(Hall entity) {
		// TODO 自动生成的方法存根
		return (Integer)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Hall entity) {
		this.getCurrentSession().saveOrUpdate(entity);
		
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#delete(java.io.Serializable)
	 */
	public void delete(Integer id) {
		this.getCurrentSession().delete(this.get(id));

	}

	public void flush() {
		this.getCurrentSession().flush();
		
	}
	
	public List<Object[]> getHallByName(String name) {
		
		String hql = "select s.hallId,s.name from Hall s where s.name like'%"
				+ name+"%'";
		List<Object[]> filmlist = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
	
		return filmlist;
	}

}
