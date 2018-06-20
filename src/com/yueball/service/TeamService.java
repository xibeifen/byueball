package com.yueball.service;

import com.yueball.entity.PageBean;
import com.yueball.entity.Team;

public interface TeamService {
	PageBean<Team> findByPage(Integer currPage);
	
   void saveTeam(Team team);
	
	Team login(Team team);
	
	Team findById(Integer tid);
	
	void update(Team team);
	
	PageBean<Team> findRegister(Integer currPage);

	void updateTeamState(Team team);
}
