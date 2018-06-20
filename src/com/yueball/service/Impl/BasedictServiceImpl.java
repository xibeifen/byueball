package com.yueball.service.Impl;

import java.util.List;

import com.yueball.dao.BasedictDao;
import com.yueball.entity.Basedict;
import com.yueball.service.BasedictService;

public class BasedictServiceImpl implements BasedictService {
	private BasedictDao basedictDao;
	
	public void setBasedictDao(BasedictDao basedictDao) {
		this.basedictDao = basedictDao;
	}

	@Override
	//根据字典类别查询值
	public List<Basedict> findNameBydictCode(String dictTypeCode) {
		// TODO Auto-generated method stub
		return basedictDao.findNameBydictCode(dictTypeCode);
	}

}
