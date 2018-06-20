package com.yueball.service.Impl;

import java.util.List;

import com.yueball.dao.TeamDao;
import com.yueball.entity.PageBean;
import com.yueball.entity.Stadium;
import com.yueball.entity.Team;
import com.yueball.service.TeamService;

public class TeamServiceImpl implements TeamService {
	private TeamDao teamDao;

	public void setTeamDao(TeamDao teamDao) {
		this.teamDao = teamDao;
	}

	@Override//业务层查询指定页面方法,查询所有队伍
	public PageBean<Team> findByPage(Integer currPage) {
		// TODO Auto-generated method stub
		PageBean<Team> pageBean=new PageBean<Team>();
		// 封装当前页数
        pageBean.setCurrPage(currPage);
        // 封装每页记录数
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        // 封装总记录数
        int totalCount = teamDao.findCount();
        pageBean.setTotalCount(totalCount);
        // 封装页数
        int totalPage;
        if(totalCount%pageSize==0){
        	totalPage = totalCount/pageSize;
        }else{
        	totalPage = totalCount/pageSize + 1; 
        }
        pageBean.setTotalPage(totalPage);
        // 封装当前页记录
        int begin= (currPage - 1)*pageSize;
        List<Team> list=teamDao.findByPage(begin, pageSize);     
        pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void saveTeam(Team team) {
		// TODO Auto-generated method stub
		teamDao.save(team);
	}

	@Override
	public Team login(Team team) {
		// TODO Auto-generated method stub
		Team tTeam=teamDao.findBycapTel(team);
		return tTeam;
	}

	@Override
	public Team findById(Integer tid) {
		// TODO Auto-generated method stub
		return teamDao.findById(tid);
	}

	@Override
	public void update(Team team) {
		// TODO Auto-generated method stub
		teamDao.update(team);
	}

	@Override//查询注册未通过的队伍信息
	public PageBean<Team> findRegister(Integer currPage) {
		// TODO Auto-generated method stub
		PageBean<Team> pageBean=new PageBean<Team>();
		// 封装当前页数
        pageBean.setCurrPage(currPage);
        // 封装每页记录数
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        // 封装总记录数
        //int totalCount = teamDao.findCount();
        int totalCount = teamDao.findRegistCount();
        pageBean.setTotalCount(totalCount);
        // 封装页数
        int totalPage;
        if(totalCount%pageSize==0){
        	totalPage = totalCount/pageSize;
        }else{
        	totalPage = totalCount/pageSize + 1; 
        }
        pageBean.setTotalPage(totalPage);
        // 封装当前页记录
        int begin= (currPage - 1)*pageSize;
        List<Team> list=teamDao.findRegister(begin, pageSize);
        pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void updateTeamState(Team team) {
		// TODO Auto-generated method stub
		teamDao.updateTeamState(team);
	}

}
