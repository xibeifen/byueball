package com.yueball.service;

import java.util.List;

import com.yueball.entity.Basedict;

public interface BasedictService {
	public List<Basedict> findNameBydictCode(String dictTypeCode);

}
