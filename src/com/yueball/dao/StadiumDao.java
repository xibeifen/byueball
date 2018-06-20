package com.yueball.dao;

import com.yueball.entity.Stadium;

public interface StadiumDao {
	Stadium findInfo();
	void update(Stadium stadium);
	Stadium findById(Integer stadiumId);
}
