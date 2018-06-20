package com.yueball.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yueball.entity.PageBean;
import com.yueball.entity.Team;
import com.yueball.service.TeamService;

public class TeamAction extends ActionSupport implements ModelDriven<Team> {
	private Team team=new Team();
	
	private TeamService teamService;

	public void setTeamService(TeamService teamService) {
		this.teamService = teamService;
	}

	@Override
	public Team getModel() {
		// TODO Auto-generated method stub
		return team;
	}
	
	//��ǰҳ�������ڲ�ѯ���ж���
	private Integer currPage=1;

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	//��ҳ��ѯ����
	public String findAll(){
		PageBean<Team> pageBean=teamService.findByPage(currPage);
		// ʹ�õ���ģ���������Ѳ�����Ϣ����ֵջ�У��ſ���ʹ��OGNL���ʽ��ȡ
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}
	
	//����ע��
	public String register(){
		//System.out.println("actionִ����");
		teamService.saveTeam(team);
		return "registerSuccess";
	}
	
	//�û������¼
	public String login(){
		Team existTeam=teamService.login(team);
		if(existTeam!=null){
			//System.out.println("����Action�ɹ�");
			ActionContext.getContext().getSession().put("existTeam", existTeam);
			return "goMain";
		}else{
		    return "checking";
		}
	}
	
	//ͨ��id��ѯ�ӳ����ڶ���
	public String findById(){
		team=teamService.findById(team.getTeamId());
		//����Team��ģ������ ѹ��ֵջ������ֵջ˳��Ϊmodel,action,���ȡֵʱҪд%{model.name}
		//�о�һ��valueStack��ognl��ȡֵ
		//ActionContext.getContext().getValueStack().push(team);
		//System.out.println(team.getCapName()+"valueִ����");
		return "myTeam";
	}
	//��������������ظ����Ժ�Ľ�һ�£�ͨ��id�ҵ����飬����չʾ��Ϣ���ٱ���
	public String findAndEdit(){
		team=teamService.findById(team.getTeamId());
		return "editTeam";
	}
	
	//Team�༭��ִ��update
	public String edit(){
		teamService.update(team);
		return "editSuccess";
	}
	
	
	//��ø�ʽ������������
	 public static String getDateAfter(Date d,int day){  
		   Calendar now =Calendar.getInstance();  
		   now.setTime(d);  
		   now.set(Calendar.DATE,now.get(Calendar.DATE)+day);  	   
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");  
		   return sdf.format(now.getTime());  
		  }  
	//��ȡ�ӳ�id����ת������ҳ�棬����ʱ��Ҫ�ӳ���ID��
	public String order(){
		//team=teamService.findById(team.getTeamId());
		List<String> dateList=new ArrayList<String>();
		for(int i=0;i<7;i++)
			dateList.add(getDateAfter(new Date(),i));
		
		ServletActionContext.getRequest().setAttribute("dateList",dateList);
		//System.out.println("����===================="+getDateAfter(new Date(),i));
//		 Calendar c = Calendar.getInstance();  
//	     List<String> dateList=new ArrayList<String>();
//	     for(int i=0;i<7;i++)
//	     {
//	    	 c.setTime(new Date());  
//		     c.get(Calendar.DATE+i);
//		     dateList.add(String.valueOf(c));
//	     }
//	     for(int i=0;i<7;i++){
//	    	 System.out.println("����===================="+dateList.get(i));
//	     }
    //	 System.out.println("dateString="+dateString);
		return "teamOrder";
	}
	
	//��ȡ�����ύע��Ķ���
	public String registTeam(){
		PageBean<Team> pageBean=teamService.findRegister(currPage);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "registTeam";
	}
	
	//ͬ�����ע��
	public String approveRegist(){
		//teamService.update(team);
		team=teamService.findById(team.getTeamId());
		return "approveSuccess";
	}
	//ͬ�����ע��2
		public String approveRegista(){
			teamService.updateTeamState(team);
			//team=teamService.findById(team.getTeamId());
			//return "approveSuccess";
			return "appTeamSuccess";
		}
	//�ı����״̬Ϊ���ͨ��
	public String approveTeam(){
		teamService.update(team);
		return "appTeamSuccess";
	}

}
