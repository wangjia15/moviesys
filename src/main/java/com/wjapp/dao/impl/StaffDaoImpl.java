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


import com.wjapp.beans.Staff;
import com.wjapp.dao.StaffDao;
import com.wjapp.viewmodel.Admin;

/**
 * @author wj
 *
 */

@Repository()  
public class StaffDaoImpl extends HibernateDaoSupport implements StaffDao {

	
	@Autowired
    public void setSessionFacotry(SessionFactory sessionFacotry) {  
        super.setSessionFactory(sessionFacotry);  
    }   
      
    private Session getCurrentSession() {  
        return this.getSessionFactory().getCurrentSession();
    }  
	
	public Admin loginAdmin(Admin admin) {
		String hql = "  from Staff admin where admin.username='"
				+ admin.getUsername() + "' and admin.password='"
				+ admin.getPassword() + "'";
		List<Staff> admins = (List<Staff>) this.getCurrentSession().createQuery(hql).getResultList();
		if (admins.size() > 0) {
			
			Admin myadmin = new Admin();
			myadmin.setUsername(admins.get(0).getUsername());
			myadmin.setPassword(admins.get(0).getPassword());
			
			return myadmin;
		}
		return null;
	}
	
	
	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#load(java.io.Serializable)
	 */
	public Staff load(Integer id) {
		// TODO 自动生成的方法存根
		return (Staff)this.getCurrentSession().load(Staff.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Staff get(Integer id) {
		// TODO 自动生成的方法存根
		return (Staff)this.getCurrentSession().get(Staff.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Staff> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Staff ";
		return (List<Staff>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Staff entity) {
		this.getCurrentSession().save(entity);
	}



	public Integer save(Staff entity) {
		// TODO 自动生成的方法存根
		return (Integer)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Staff entity) {
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

	public List<Object[]> getStaffByName(String name) {
		
		String hql = "select s.staffId,s.firstName from Staff s where s.firstName like'%"
				+ name+"%'";
		List<Object[]> filmlist = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
	
		return filmlist;
	}
}
