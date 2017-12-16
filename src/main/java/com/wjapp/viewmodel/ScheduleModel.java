package com.wjapp.viewmodel;

public class ScheduleModel implements java.io.Serializable  {
	
	private String storename;
	private java.sql.Time playtime;
	private java.sql.Time endtime;
	private Long price;
	private String type;
	private String hallname;
	private Byte seat;
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public java.sql.Time getPlaytime() {
		return playtime;
	}
	public void setPlaytime(java.sql.Time playtime) {
		this.playtime = playtime;
	}
	public java.sql.Time getEndtime() {
		return endtime;
	}
	public void setEndtime(java.sql.Time endtime) {
		this.endtime = endtime;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getHallname() {
		return hallname;
	}
	public void setHallname(String hallname) {
		this.hallname = hallname;
	}
	public Byte getSeat() {
		return seat;
	}
	public void setSeat(Byte seat) {
		this.seat = seat;
	}

}
