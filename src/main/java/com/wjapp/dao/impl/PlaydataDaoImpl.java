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

import com.wjapp.beans.Playdata;
import com.wjapp.dao.PlaydataDao;

/**
 * @author wj
 *
 */


@Repository()  
public class PlaydataDaoImpl extends HibernateDaoSupport implements PlaydataDao {

	
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
	public Playdata load(Integer id) {
		// TODO 自动生成的方法存根
		return (Playdata)this.getCurrentSession().load(Playdata.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Playdata get(Integer id) {
		// TODO 自动生成的方法存根
		return (Playdata)this.getCurrentSession().get(Playdata.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Playdata> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Playdata ";
		return (List<Playdata>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Playdata entity) {
		this.getCurrentSession().save(entity);
	}



	public Integer save(Playdata entity) {
		// TODO 自动生成的方法存根
		return (Integer)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Playdata entity) {
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
	
	public List<Object[]> getPlaydataByName(String name) {
		
		String hql = "select s.playdataId,s.filmname from Playdata s where s.filmname like'%"
				+ name+"%'";
		List<Object[]> filmlist = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
	
		return filmlist;
	}

	

}
