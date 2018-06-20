package com.yueball.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.BasedictDao;
import com.yueball.entity.Basedict;

public class BasedictDaoImpl extends HibernateDaoSupport implements BasedictDao {


	@Override
	//根据数据字典的标识代码，查询项目名
	public List<Basedict> findNameBydictCode(String dictTypeCode) {
		// TODO Auto-generated method stub
		//创建离线查询对象
		DetachedCriteria dc=DetachedCriteria.forClass(Basedict.class);
		//增加查询条件
		dc.add(Restrictions.eq("dictTypeCode",dictTypeCode));
		//执行查询操作
		List<Basedict> list=this.getHibernateTemplate().findByCriteria(dc);
		return list;
	}
}
