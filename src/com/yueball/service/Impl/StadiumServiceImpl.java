package com.yueball.service.Impl;

import com.yueball.dao.StadiumDao;
import com.yueball.entity.Stadium;
import com.yueball.service.StadiumService;

public class StadiumServiceImpl implements StadiumService {
	private StadiumDao stadiumDao;

	public void setStadiumDao(StadiumDao stadiumDao) {
		this.stadiumDao = stadiumDao;
	}

	@Override
	public Stadium findInfo() {
		// TODO Auto-generated method stub
		return stadiumDao.findInfo();
	}

	@Override
	public void update(Stadium stadium) {
		// TODO Auto-generated method stub
		//System.out.println("执行了更新操作service");
		stadiumDao.update(stadium);
	}

	@Override
	public Stadium findById(Integer stadiumId) {
		// TODO Auto-generated method stub
		return stadiumDao.findById(stadiumId);
	}

}
