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

import com.wjapp.beans.Customer;
import com.wjapp.beans.Staff;
import com.wjapp.dao.CustomerDao;
import com.wjapp.viewmodel.Admin;

/**
 * @author wj
 *
 */
@Repository()  
public class CustomerDaoImpl extends HibernateDaoSupport implements CustomerDao {

	
	@Autowired
    public void setSessionFacotry(SessionFactory sessionFacotry) {  
        super.setSessionFactory(sessionFacotry);  
    }   
      
    private Session getCurrentSession() {  
        return this.getSessionFactory().getCurrentSession();
    }  
    
	public Customer loginAdmin(Customer admin) {
		String hql = "  from Customer admin where admin.username='"
				+ admin.getUsername() + "' and admin.password='"
				+ admin.getPassword() + "'";
		List<Customer> admins = (List<Customer>) this.getCurrentSession().createQuery(hql).getResultList();
		if (admins.size() > 0) {
			
			Customer myadmin = new Customer();
			myadmin.setUsername(admins.get(0).getUsername());
			myadmin.setPassword(admins.get(0).getPassword());
			myadmin.setCustomerId(admins.get(0).getCustomerId());
			
			return myadmin;
		}
		return null;
	}
	
	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#load(java.io.Serializable)
	 */
	public Customer load(Short id) {
		// TODO 自动生成的方法存根
		return (Customer)this.getCurrentSession().load(Customer.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Customer get(Short id) {
		// TODO 自动生成的方法存根
		return (Customer)this.getCurrentSession().get(Customer.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Customer> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Customer ";
		return (List<Customer>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Customer entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(Customer entity) {
		// TODO 自动生成的方法存根
		return (Short)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Customer entity) {
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
