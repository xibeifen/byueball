package com.yueball.dao;

import com.yueball.entity.Manager;

public interface ManagerDao {
	Manager findByNameAndPassword(Manager manager);

}
