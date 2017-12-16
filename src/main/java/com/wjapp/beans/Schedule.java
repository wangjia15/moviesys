package com.wjapp.beans;
// Generated 2017-7-14 15:45:30 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Schedule generated by hbm2java
 */
@Entity
@Table(name = "schedule", catalog = "moviedb")
public class Schedule implements java.io.Serializable {

	private Integer scheduleId;
	private Hall hall;
	private Playdata playdata;
	private Staff staff;
	private java.sql.Time playtime;
	private Long price;
	private Byte steatStandby;
	
	private Date playdate;
	
	private java.sql.Time endtime;
	private Set<Saleinfo> saleinfos = new HashSet<Saleinfo>(0);
	private Set<Seat> seats = new HashSet<Seat>(0);

	public Schedule() {
	}

	public Schedule(Hall hall, Playdata playdata, Staff staff, java.sql.Time playtime, Long price, Byte steatStandby,
			Set<Saleinfo> saleinfos, Set<Seat> seats) {
		this.hall = hall;
		this.playdata = playdata;
		this.staff = staff;
		this.playtime = playtime;
		this.price = price;
		this.steatStandby = steatStandby;
		this.saleinfos = saleinfos;
		this.seats = seats;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "schedule_id", unique = true, nullable = false)
	public Integer getScheduleId() {
		return this.scheduleId;
	}

	public void setScheduleId(Integer scheduleId) {
		this.scheduleId = scheduleId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hall_id")
	public Hall getHall() {
		return this.hall;
	}

	public void setHall(Hall hall) {
		this.hall = hall;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "playdata_id")
	public Playdata getPlaydata() {
		return this.playdata;
	}

	public void setPlaydata(Playdata playdata) {
		this.playdata = playdata;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "staff_id")
	public Staff getStaff() {
		return this.staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	//@Temporal(TemporalType.TIME)
	@Column(name = "playtime", length = 6)
	public java.sql.Time getPlaytime() {
		return this.playtime;
	}

	public void setPlaytime(java.sql.Time playtime) {
		this.playtime = playtime;
	}

	@Column(name = "price", precision = 10, scale = 0)
	public Long getPrice() {
		return this.price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	@Column(name = "steatStandby")
	public Byte getSteatStandby() {
		return this.steatStandby;
	}

	public void setSteatStandby(Byte steatStandby) {
		this.steatStandby = steatStandby;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "schedule")
	public Set<Saleinfo> getSaleinfos() {
		return this.saleinfos;
	}

	public void setSaleinfos(Set<Saleinfo> saleinfos) {
		this.saleinfos = saleinfos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "schedule")
	public Set<Seat> getSeats() {
		return this.seats;
	}

	public void setSeats(Set<Seat> seats) {
		this.seats = seats;
	}
	@Temporal(TemporalType.DATE)
	@Column(name = "playdate", length = 8)
	public Date getPlaydate() {
		return playdate;
	}

	public void setPlaydate(Date playdate) {
		this.playdate = playdate;
	}

	//@Temporal(TemporalType.TIME)
	@Column(name = "endtime", length = 6)
	public java.sql.Time getEndtime() {
		return endtime;
	}

	public void setEndtime(java.sql.Time endtime) {
		this.endtime = endtime;
	}

}