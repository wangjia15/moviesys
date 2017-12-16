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

import com.wjapp.beans.Address;
import com.wjapp.dao.AddressDao;

/**
 * @author wj
 *
 */

@Repository()  
public class AddressDaoImpl extends HibernateDaoSupport implements AddressDao {

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
	public Address load(Short id) {
		// TODO 自动生成的方法存根
		return (Address)this.getCurrentSession().load(Address.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Address get(Short id) {
		// TODO 自动生成的方法存根
		return (Address)this.getCurrentSession().get(Address.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Address> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Address ";
		return (List<Address>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Address entity) {
		this.getCurrentSession().save(entity);
	}



	public Short save(Address entity) {
		// TODO 自动生成的方法存根
		return (Short)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Address entity) {
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
	
	
	public List<Object[]> getAddressByName(String name) {
		
		String hql = "select a.addressId,a.address1 from Address a where a.address1 like'%"
				+ name+"%'";
		List<Object[]> filmlist = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
	
		return filmlist;
	}

}
