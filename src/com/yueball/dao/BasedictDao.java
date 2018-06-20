package com.yueball.dao;

import java.util.List;

import com.yueball.entity.Basedict;

public interface BasedictDao {
	public List<Basedict> findNameBydictCode(String dictTypeCode);
}
	
