package com.yueball.entity;
/**
 * Basedict entity. @author MyEclipse Persistence Tools
 */

public class Basedict implements java.io.Serializable {

	// Fields

	private Integer dictId;
	private String dictTypeCode;
	private String dictTypeName;
	private String dictItemName;
	private Integer dictSort;
	private String dictEnable;
	public Basedict() {
		//super();
	}
	public Basedict(Integer dictId, String dictTypeCode, String dictTypeName,
			String dictItemName, Integer dictSort, String dictEnable) {
		//super();
		this.dictId = dictId;
		this.dictTypeCode = dictTypeCode;
		this.dictTypeName = dictTypeName;
		this.dictItemName = dictItemName;
		this.dictSort = dictSort;
		this.dictEnable = dictEnable;
	}
	public Integer getDictId() {
		return dictId;
	}
	public void setDictId(Integer dictId) {
		this.dictId = dictId;
	}
	public String getDictTypeCode() {
		return dictTypeCode;
	}
	public void setDictTypeCode(String dictTypeCode) {
		this.dictTypeCode = dictTypeCode;
	}
	public String getDictTypeName() {
		return dictTypeName;
	}
	public void setDictTypeName(String dictTypeName) {
		this.dictTypeName = dictTypeName;
	}
	public String getDictItemName() {
		return dictItemName;
	}
	public void setDictItemName(String dictItemName) {
		this.dictItemName = dictItemName;
	}
	public Integer getDictSort() {
		return dictSort;
	}
	public void setDictSort(Integer dictSort) {
		this.dictSort = dictSort;
	}
	public String getDictEnable() {
		return dictEnable;
	}
	public void setDictEnable(String dictEnable) {
		this.dictEnable = dictEnable;
	}
	
}