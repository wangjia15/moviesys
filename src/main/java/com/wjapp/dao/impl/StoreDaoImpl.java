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

import com.wjapp.beans.Store;
import com.wjapp.dao.StoreDao;

/**
 * @author wj
 *
 */

@Repository()  
public class StoreDaoImpl extends HibernateDaoSupport implements StoreDao {

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
	public Store load(Short id) {
		// TODO 自动生成的方法存根
		return (Store)this.getCurrentSession().load(Store.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Store get(Short id) {
		// TODO 自动生成的方法存根
		return (Store)this.getCurrentSession().get(Store.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Store> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Store ";
		return (List<Store>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Store entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(Store entity) {
		// TODO 自动生成的方法存根
		return (Short)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Store entity) {
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
