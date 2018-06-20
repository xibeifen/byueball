package com.yueball.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yueball.entity.Stadium;
import com.yueball.service.StadiumService;

public class StadiumAction extends ActionSupport implements ModelDriven<Stadium> {
	private Stadium stadium=new Stadium();
	private StadiumService stadiumService;

	public void setStadiumService(StadiumService stadiumService) {
		this.stadiumService = stadiumService;
	}

	@Override
	public Stadium getModel() {
		// TODO Auto-generated method stub
		return stadium;
	}
	
	//查询场馆所有信息
	public String findAll(){
		Map session = ActionContext.getContext().getSession();
		Stadium stadium=stadiumService.findInfo();
		session.put("stadium", stadium);		
		return "findStadium";
	}
	//查询出场馆信息后进入修改
	public String findById(){
		stadium=stadiumService.findById(stadium.getStadiumId());
		//System.out.println(stadium.getStadiumId());
		return "goEditStadium";
	}
	
	public String update(){
		stadiumService.update(stadium);
		//System.out.println("更新成功了");
		return "updateSUCCESS";
	}

}
