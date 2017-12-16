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

import com.wjapp.beans.Language;
import com.wjapp.dao.LanguageDao;

/**
 * @author wj
 *
 */

@Repository()  
public class LanguageDaoImpl extends HibernateDaoSupport implements LanguageDao {

	
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
	public Language load(Integer id) {
		// TODO 自动生成的方法存根
		return (Language)this.getCurrentSession().load(Language.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Language get(Integer id) {
		// TODO 自动生成的方法存根
		return (Language)this.getCurrentSession().get(Language.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Language> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Language ";
		return (List<Language>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Language entity) {
		this.getCurrentSession().save(entity);
	}



	public Integer save(Language entity) {
		// TODO 自动生成的方法存根
		return (Integer)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Language entity) {
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
