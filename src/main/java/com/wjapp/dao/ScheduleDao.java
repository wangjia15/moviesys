package com.wjapp.dao;

import java.util.List;

import com.wjapp.beans.Schedule;
import com.wjapp.viewmodel.ScheduleModel;

public interface ScheduleDao extends BaseDao<Schedule, Integer> {
	
	public List<ScheduleModel>  getScheduleByinfo(int playdatid,int storeid);

}
