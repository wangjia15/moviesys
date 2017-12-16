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

import com.wjapp.beans.Saleinfo;
import com.wjapp.dao.SaleinfoDao;

/**
 * @author wj
 *
 */

@Repository() 
public class SaleinfoDaoImpl extends HibernateDaoSupport implements SaleinfoDao {

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
	public Saleinfo load(Integer id) {
		// TODO 自动生成的方法存根
		return (Saleinfo)this.getCurrentSession().load(Saleinfo.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Saleinfo get(Integer id) {
		// TODO 自动生成的方法存根
		return (Saleinfo)this.getCurrentSession().get(Saleinfo.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Saleinfo> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Saleinfo ";
		return (List<Saleinfo>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Saleinfo entity) {
		this.getCurrentSession().save(entity);
	}



	public Integer save(Saleinfo entity) {
		// TODO 自动生成的方法存根
		return (Integer)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Saleinfo entity) {
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

}
