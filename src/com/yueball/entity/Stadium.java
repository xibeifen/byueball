package com.yueball.entity;

import java.sql.Time;

/**
 * Stadium entity. @author MyEclipse Persistence Tools
 */

public class Stadium implements java.io.Serializable {

	// Fields

	private Integer stadiumId;
	private String name;
	private Integer city;
	private Integer district;
	private String address;
	private String orderTel;
	private String contactMan;
	private String email;
	private Integer period;
	private Time openTime;
	private Time closeTime;
	private Integer intVal;
	private String img;
	private String suggest;

	// Constructors

	/** default constructor */
	public Stadium() {
	}

	/** full constructor */
	public Stadium(String name, Integer city, Integer district, String address,
			String orderTel, String contactMan, String email, Integer period,
			Time openTime, Time closeTime, Integer intVal, String img,
			String suggest) {
		this.name = name;
		this.city = city;
		this.district = district;
		this.address = address;
		this.orderTel = orderTel;
		this.contactMan = contactMan;
		this.email = email;
		this.period = period;
		this.openTime = openTime;
		this.closeTime = closeTime;
		this.intVal = intVal;
		this.img = img;
		this.suggest = suggest;
	}

	// Property accessors

	public Integer getStadiumId() {
		return this.stadiumId;
	}

	public void setStadiumId(Integer stadiumId) {
		this.stadiumId = stadiumId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getCity() {
		return this.city;
	}

	public void setCity(Integer city) {
		this.city = city;
	}

	public Integer getDistrict() {
		return this.district;
	}

	public void setDistrict(Integer district) {
		this.district = district;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOrderTel() {
		return this.orderTel;
	}

	public void setOrderTel(String orderTel) {
		this.orderTel = orderTel;
	}

	public String getContactMan() {
		return this.contactMan;
	}

	public void setContactMan(String contactMan) {
		this.contactMan = contactMan;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getPeriod() {
		return this.period;
	}

	public void setPeriod(Integer period) {
		this.period = period;
	}

	public Time getOpenTime() {
		return this.openTime;
	}

	public void setOpenTime(Time openTime) {
		this.openTime = openTime;
	}

	public Time getCloseTime() {
		return this.closeTime;
	}

	public void setCloseTime(Time closeTime) {
		this.closeTime = closeTime;
	}

	public Integer getIntVal() {
		return this.intVal;
	}

	public void setIntVal(Integer intVal) {
		this.intVal = intVal;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getSuggest() {
		return this.suggest;
	}

	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}

}