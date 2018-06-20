package com.yueball.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.StadiumDao;
import com.yueball.entity.Stadium;

public class StadiumDaoImpl extends HibernateDaoSupport implements StadiumDao {

	@Override
	//查询场馆所有信息
	public Stadium findInfo() {
		String hql="from Stadium";
        Session session=getSession();
		Query query=session.createQuery(hql);
		List stad=query.list();
		if(stad.size()!=0){
			Stadium stadium=(Stadium) stad.get(0);
			return stadium;
		}
		session.close();
		return null;
	}

	@Override
	public void update(Stadium stadium) {
		// TODO Auto-generated method stub
		/*这里用模板不行，但是session会话工厂却可以，回头看看？？？？哪里错了
		 *
		 * stadium.setStadiumId(1); 
		this.getHibernateTemplate().update(stadium);*/
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.update(stadium);
		tx.commit();
		session.close();
	}

	@Override
	//通过球馆的id查询出球馆
	public Stadium findById(Integer stadiumId) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Stadium.class, stadiumId);
	}

}
