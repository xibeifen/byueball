package com.yueball.dao;

import java.util.List;

import com.yueball.entity.Team;

public interface TeamDao {
	List<Team> findByPage(int begin,int pageSize);
	
	int findCount();
	
	int findRegistCount();
	
	public void save(Team team);
	
	Team findBycapTel(Team team);
	
	Team findById(Integer tid);
	
	void update(Team team);
	
	List<Team> findRegister(int begin,int pageSize);
	
	void updateTeamState(Team team);
}
