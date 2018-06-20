package com.yueball.service.Impl;

import com.yueball.dao.ManagerDao;
import com.yueball.entity.Manager;
import com.yueball.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
	private ManagerDao managerDao;

	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}


	@Override//ÒµÎñ²ãµÇÂ¼
	public Manager login(Manager manager) {
		// TODO Auto-generated method stub
		Manager mManager=managerDao.findByNameAndPassword(manager);
		return mManager;
	}

}
