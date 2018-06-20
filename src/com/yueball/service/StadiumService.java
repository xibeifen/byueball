package com.yueball.service;

import com.yueball.entity.Stadium;

public interface StadiumService {
	Stadium findInfo();
	void update(Stadium stadium);
	Stadium findById(Integer stadiumId);
}
