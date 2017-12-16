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

import com.wjapp.beans.City;
import com.wjapp.dao.CityDao;

/**
 * @author wj
 *
 */
@Repository()  
public class CityDaoImpl extends HibernateDaoSupport implements CityDao {

	
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
	public City load(Short id) {
		// TODO 自动生成的方法存根
		return (City)this.getCurrentSession().load(City.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public City get(Short id) {
		// TODO 自动生成的方法存根
		return (City)this.getCurrentSession().get(City.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<City> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from City ";
		return (List<City>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(City entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(City entity) {
		// TODO 自动生成的方法存根
		return (Short)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(City entity) {
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

}
