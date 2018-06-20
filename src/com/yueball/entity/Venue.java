package com.yueball.entity;

/**
 * Venue entity. @author MyEclipse Persistence Tools
 */

public class Venue implements java.io.Serializable {

	// Fields

	private Integer venueId;
	private String name;
	private String state;
	private String venueType;
	private String stadiumId;
	private String img;
	public Venue() {
		//super();
	}
	public Venue(Integer venueId, String name, String state, String venueType,
			String stadiumId, String img) {
		//super();
		this.venueId = venueId;
		this.name = name;
		this.state = state;
		this.venueType = venueType;
		this.stadiumId = stadiumId;
		this.img = img;
	}
	public Integer getVenueId() {
		return venueId;
	}
	public void setVenueId(Integer venueId) {
		this.venueId = venueId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getVenueType() {
		return venueType;
	}
	public void setVenueType(String venueType) {
		this.venueType = venueType;
	}
	public String getStadiumId() {
		return stadiumId;
	}
	public void setStadiumId(String stadiumId) {
		this.stadiumId = stadiumId;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

}