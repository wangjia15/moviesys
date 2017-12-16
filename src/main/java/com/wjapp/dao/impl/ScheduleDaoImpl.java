/**
 * 
 */
package com.wjapp.dao.impl;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.wjapp.beans.Schedule;
import com.wjapp.beans.Staff;
import com.wjapp.dao.ScheduleDao;
import com.wjapp.viewmodel.Admin;
import com.wjapp.viewmodel.ScheduleModel;

/**
 * @author wj
 *
 */

@Repository()  
public class ScheduleDaoImpl extends HibernateDaoSupport implements ScheduleDao {

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
	public Schedule load(Integer id) {
		// TODO 自动生成的方法存根
		return (Schedule)this.getCurrentSession().load(Schedule.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#get(java.io.Serializable)
	 */
	public Schedule get(Integer id) {
		// TODO 自动生成的方法存根
		return (Schedule)this.getCurrentSession().get(Schedule.class, id);
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#findAll()
	 */
	public List<Schedule> findAll() {
		// TODO 自动生成的方法存根
		String hql = "from Schedule ";
		return (List<Schedule>)this.getCurrentSession().createQuery(hql).getResultList();
	}

	/* （非 Javadoc）
	 * @see com.wjapp.dao.BaseDao#persist(java.lang.Object)
	 */
	public void persist(Schedule entity) {
		this.getCurrentSession().save(entity);
	}



	public Integer save(Schedule entity) {
		// TODO 自动生成的方法存根
		return (Integer)this.getCurrentSession().save(entity);
	}



	public void saveOrUpdate(Schedule entity) {
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
	
	public List<ScheduleModel> getScheduleByinfo(int playdatid,int storeid) {
		String hql = "select s.endtime,s.playtime,s.price,s.steatStandby,s.hall.name,s.hall.type,s.hall.store.name from Schedule s inner join   s.hall h "
				+ "inner join  h.store st where s.playdata.playdataId='"
				+ playdatid + "' and st.storeId='"
				+ storeid + "'";
		List<Object[]> list = (List<Object[]>) this.getCurrentSession().createQuery(hql).getResultList();
		
		List<ScheduleModel> result=  new ArrayList<ScheduleModel>();
		for(Object[] item :list ){
			
			ScheduleModel sm= new ScheduleModel();
			sm.setEndtime((Time)item[0]);
		
			sm.setPlaytime((Time)item[1]);
			sm.setPrice((Long)item[2]);
			sm.setSeat((Byte)item[3]);
			sm.setHallname(item[4].toString());
			sm.setType(item[5].toString());
			sm.setStorename(item[6].toString());
		
			
			
			result.add(sm);
			
		}
		

		return result;
	}

}
