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
	//���������ֵ�ı�ʶ���룬��ѯ��Ŀ��
	public List<Basedict> findNameBydictCode(String dictTypeCode) {
		// TODO Auto-generated method stub
		//�������߲�ѯ����
		DetachedCriteria dc=DetachedCriteria.forClass(Basedict.class);
		//���Ӳ�ѯ����
		dc.add(Restrictions.eq("dictTypeCode",dictTypeCode));
		//ִ�в�ѯ����
		List<Basedict> list=this.getHibernateTemplate().findByCriteria(dc);
		return list;
	}
}
