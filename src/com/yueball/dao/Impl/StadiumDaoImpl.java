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
	//��ѯ����������Ϣ
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
		/*������ģ�岻�У�����session�Ự����ȴ���ԣ���ͷ�������������������
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
	//ͨ����ݵ�id��ѯ�����
	public Stadium findById(Integer stadiumId) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Stadium.class, stadiumId);
	}

}
