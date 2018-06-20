package com.yueball.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yueball.entity.Manager;
import com.yueball.service.ManagerService;

public class ManagerAction extends ActionSupport implements ModelDriven<Manager>{
	// 模型驱动使用的对象，自动注入manager的数据 
	private Manager manager=new Manager();
    // struts2整合spring,注入业务层
	private ManagerService managerService;

	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	@Override
	public Manager getModel() {
		// TODO Auto-generated method stub
		return manager;
	}
	
	//管理员登录
	public String login(){
		//System.out.println("action执行了");
		// 调用业务层方法
		Manager existManager=managerService.login(manager);
		if(existManager==null){
			//登录失败
			this.addActionError("用户名或密码错误！");
			System.out.println("action查找失败");
			return "INPUT";
		}else{
			//登录成功
			//System.out.println("Action查找成功");
			ActionContext.getContext().getSession().put("existManager",existManager);
			return "SUCCESS";
		}
	}
	

}
