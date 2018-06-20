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
	
	//当前页数，用于查询所有队伍
	private Integer currPage=1;

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	//分页查询队伍
	public String findAll(){
		PageBean<Team> pageBean=teamService.findByPage(currPage);
		// 使用的是模型驱动，把部门信息放入值栈中，才可以使用OGNL表达式获取
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}
	
	//队伍注册
	public String register(){
		//System.out.println("action执行了");
		teamService.saveTeam(team);
		return "registerSuccess";
	}
	
	//用户队伍登录
	public String login(){
		Team existTeam=teamService.login(team);
		if(existTeam!=null){
			//System.out.println("查找Action成功");
			ActionContext.getContext().getSession().put("existTeam", existTeam);
			return "goMain";
		}else{
		    return "checking";
		}
	}
	
	//通过id查询队长所在队伍
	public String findById(){
		team=teamService.findById(team.getTeamId());
		//这里Team被模型驱动 压入值栈顶部，值栈顺序即为model,action,因此取值时要写%{model.name}
		//研究一下valueStack和ognl存取值
		//ActionContext.getContext().getValueStack().push(team);
		//System.out.println(team.getCapName()+"value执行了");
		return "myTeam";
	}
	//这个方法和上面重复，以后改进一下，通过id找到队伍，并且展示信息，再保存
	public String findAndEdit(){
		team=teamService.findById(team.getTeamId());
		return "editTeam";
	}
	
	//Team编辑，执行update
	public String edit(){
		teamService.update(team);
		return "editSuccess";
	}
	
	
	//获得格式化后七天日期
	 public static String getDateAfter(Date d,int day){  
		   Calendar now =Calendar.getInstance();  
		   now.setTime(d);  
		   now.set(Calendar.DATE,now.get(Calendar.DATE)+day);  	   
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");  
		   return sdf.format(now.getTime());  
		  }  
	//获取队长id并跳转到订单页面，订单时需要队长的ID号
	public String order(){
		//team=teamService.findById(team.getTeamId());
		List<String> dateList=new ArrayList<String>();
		for(int i=0;i<7;i++)
			dateList.add(getDateAfter(new Date(),i));
		
		ServletActionContext.getRequest().setAttribute("dateList",dateList);
		//System.out.println("日期===================="+getDateAfter(new Date(),i));
//		 Calendar c = Calendar.getInstance();  
//	     List<String> dateList=new ArrayList<String>();
//	     for(int i=0;i<7;i++)
//	     {
//	    	 c.setTime(new Date());  
//		     c.get(Calendar.DATE+i);
//		     dateList.add(String.valueOf(c));
//	     }
//	     for(int i=0;i<7;i++){
//	    	 System.out.println("日期===================="+dateList.get(i));
//	     }
    //	 System.out.println("dateString="+dateString);
		return "teamOrder";
	}
	
	//获取所有提交注册的队伍
	public String registTeam(){
		PageBean<Team> pageBean=teamService.findRegister(currPage);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "registTeam";
	}
	
	//同意队伍注册
	public String approveRegist(){
		//teamService.update(team);
		team=teamService.findById(team.getTeamId());
		return "approveSuccess";
	}
	//同意队伍注册2
		public String approveRegista(){
			teamService.updateTeamState(team);
			//team=teamService.findById(team.getTeamId());
			//return "approveSuccess";
			return "appTeamSuccess";
		}
	//改变审核状态为审核通过
	public String approveTeam(){
		teamService.update(team);
		return "appTeamSuccess";
	}

}
