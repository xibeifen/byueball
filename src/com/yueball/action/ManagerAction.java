package com.yueball.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yueball.entity.Manager;
import com.yueball.service.ManagerService;

public class ManagerAction extends ActionSupport implements ModelDriven<Manager>{
	// ģ������ʹ�õĶ����Զ�ע��manager������ 
	private Manager manager=new Manager();
    // struts2����spring,ע��ҵ���
	private ManagerService managerService;

	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	@Override
	public Manager getModel() {
		// TODO Auto-generated method stub
		return manager;
	}
	
	//����Ա��¼
	public String login(){
		//System.out.println("actionִ����");
		// ����ҵ��㷽��
		Manager existManager=managerService.login(manager);
		if(existManager==null){
			//��¼ʧ��
			this.addActionError("�û������������");
			System.out.println("action����ʧ��");
			return "INPUT";
		}else{
			//��¼�ɹ�
			//System.out.println("Action���ҳɹ�");
			ActionContext.getContext().getSession().put("existManager",existManager);
			return "SUCCESS";
		}
	}
	

}
