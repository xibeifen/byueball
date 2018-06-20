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

	@Override//ҵ����ѯָ��ҳ�淽��,��ѯ���ж���
	public PageBean<Team> findByPage(Integer currPage) {
		// TODO Auto-generated method stub
		PageBean<Team> pageBean=new PageBean<Team>();
		// ��װ��ǰҳ��
        pageBean.setCurrPage(currPage);
        // ��װÿҳ��¼��
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        // ��װ�ܼ�¼��
        int totalCount = teamDao.findCount();
        pageBean.setTotalCount(totalCount);
        // ��װҳ��
        int totalPage;
        if(totalCount%pageSize==0){
        	totalPage = totalCount/pageSize;
        }else{
        	totalPage = totalCount/pageSize + 1; 
        }
        pageBean.setTotalPage(totalPage);
        // ��װ��ǰҳ��¼
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

	@Override//��ѯע��δͨ���Ķ�����Ϣ
	public PageBean<Team> findRegister(Integer currPage) {
		// TODO Auto-generated method stub
		PageBean<Team> pageBean=new PageBean<Team>();
		// ��װ��ǰҳ��
        pageBean.setCurrPage(currPage);
        // ��װÿҳ��¼��
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        // ��װ�ܼ�¼��
        //int totalCount = teamDao.findCount();
        int totalCount = teamDao.findRegistCount();
        pageBean.setTotalCount(totalCount);
        // ��װҳ��
        int totalPage;
        if(totalCount%pageSize==0){
        	totalPage = totalCount/pageSize;
        }else{
        	totalPage = totalCount/pageSize + 1; 
        }
        pageBean.setTotalPage(totalPage);
        // ��װ��ǰҳ��¼
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
