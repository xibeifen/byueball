package com.yueball.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.VenueDao;
import com.yueball.entity.Venue;

public class VenueDaoImpl extends HibernateDaoSupport implements VenueDao {

	@Override
	//��ѯ�����������򳡵���Ϣ
	public List<Venue> findInfo() {
		// TODO Auto-generated method stub
		String hql="from Venue";
		//String hql="from Venue venue order by venue.venueId desc";
		Session session=getSession();
		Query query=session.createQuery(hql);
		List<Venue> venue=query.list();
		if(venue.size()!=0){
			return venue;
		}
		session.close();
		return null;
	}

	@Override
	//����id��ѯ��
	public Venue findById(Integer venueId) {
		//SSHʵս �� ��spring����µ�hibernatetemplate��get�������ֵ�����
		String hql="from Venue where venueId=?";
		List<Venue> list=this.getHibernateTemplate().find(hql,venueId);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

}
