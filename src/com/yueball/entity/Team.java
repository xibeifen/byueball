package com.yueball.entity;

/**
 * Team entity. @author MyEclipse Persistence Tools
 */

public class Team implements java.io.Serializable {

	// Fields

	private Integer teamId;
	private Basedict aveAge;//对应字典表中的平均年龄
	private String name;
	private Basedict aveLevel;//对应字典表中的平均水平
	private String capName;
	private String capTel;
	private Integer absence;
	private Integer credits;
	private String teamState;
	private String img;
	private Basedict checkState;//字典表中的审核状态

	// Constructors

	/** default constructor */
	public Team() {
	}

	public Team(Integer teamId, Basedict aveAge, String name,
			Basedict aveLevel, String capName, String capTel, Integer absence,
			Integer credits, String teamState, String img, Basedict checkState) {
		//super();
		this.teamId = teamId;
		this.aveAge = aveAge;
		this.name = name;
		this.aveLevel = aveLevel;
		this.capName = capName;
		this.capTel = capTel;
		this.absence = absence;
		this.credits = credits;
		this.teamState = teamState;
		this.img = img;
		this.checkState = checkState;
	}

	public Integer getTeamId() {
		return teamId;
	}

	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}

	public Basedict getAveAge() {
		return aveAge;
	}

	public void setAveAge(Basedict aveAge) {
		this.aveAge = aveAge;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Basedict getAveLevel() {
		return aveLevel;
	}

	public void setAveLevel(Basedict aveLevel) {
		this.aveLevel = aveLevel;
	}

	public String getCapName() {
		return capName;
	}

	public void setCapName(String capName) {
		this.capName = capName;
	}

	public String getCapTel() {
		return capTel;
	}

	public void setCapTel(String capTel) {
		this.capTel = capTel;
	}

	public Integer getAbsence() {
		return absence;
	}

	public void setAbsence(Integer absence) {
		this.absence = absence;
	}

	public Integer getCredits() {
		return credits;
	}

	public void setCredits(Integer credits) {
		this.credits = credits;
	}

	public String getTeamState() {
		return teamState;
	}

	public void setTeamState(String teamState) {
		this.teamState = teamState;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Basedict getCheckState() {
		return checkState;
	}

	public void setCheckState(Basedict checkState) {
		this.checkState = checkState;
	}
	
	
	


}