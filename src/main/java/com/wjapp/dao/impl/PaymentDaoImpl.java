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

import com.wjapp.beans.Payment;
import com.wjapp.dao.PaymentDao;

/**
 * @author wj
 *
 */

@Repository()  
public class PaymentDaoImpl extends HibernateDaoSupport implements PaymentDao {

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
	public Payment load(Short id) {
		// TODO 自动生成的方法存根
		return (Payment)this.getCurrentSession().load(Payment.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Payment get(Short id) {
		// TODO 自动生成的方法存根
		return (Payment)this.getCurrentSession().get(Payment.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Payment> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Payment ";
		return (List<Payment>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Payment entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(Payment entity) {
		// TODO 自动生成的方法存根
		return (Short)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Payment entity) {
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
