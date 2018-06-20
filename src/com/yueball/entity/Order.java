package com.yueball.entity;

import java.sql.Time;
import java.util.Date;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer orderId;
	private Team teamTwo;
	private Team teamOne;
	private Basedict venueId;
	private Date orderDate;
	private Time startTime;
	private String orderTime;
	public Order() {
		//super();
	}
	public Order(Integer orderId, Team teamTwo, Team teamOne, Basedict venueId,
			Date orderDate, Time startTime, String orderTime) {
		//super();
		this.orderId = orderId;
		this.teamTwo = teamTwo;
		this.teamOne = teamOne;
		this.venueId = venueId;
		this.orderDate = orderDate;
		this.startTime = startTime;
		this.orderTime = orderTime;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Team getTeamTwo() {
		return teamTwo;
	}
	public void setTeamTwo(Team teamTwo) {
		this.teamTwo = teamTwo;
	}
	public Team getTeamOne() {
		return teamOne;
	}
	public void setTeamOne(Team teamOne) {
		this.teamOne = teamOne;
	}
	public Basedict getVenueId() {
		return venueId;
	}
	public void setVenueId(Basedict venueId) {
		this.venueId = venueId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Time getStartTime() {
		return startTime;
	}
	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	
	
	
}