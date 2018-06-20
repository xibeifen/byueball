package com.yueball.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.TeamDao;
import com.yueball.entity.Team;

public class TeamDaoImpl extends HibernateDaoSupport implements TeamDao {

	@Override
	//��ѯָ��ҳ
	public List<Team> findByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Team.class);
		List<Team> list = this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		return list;
	}

	@Override
	//��ѯ��������
	public int findCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from Team";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public void save(Team team) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.save(team);
		tx.commit();
		session.close();
	}

	@Override
	//ͨ���ӳ��绰�����¼.....��Ϊ�����¼
	public Team findBycapTel(Team team) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		String hql="from Team team where team.capTel=? and team.name=? and team.teamState=?";
		//List<Team> list=this.getHibernateTemplate().find(hql,team.getCapTel(),team.getName());
		Query query=session.createQuery(hql);
		query.setParameter(0,team.getCapTel());
		query.setParameter(1,team.getName());
		query.setParameter(2,"���ͨ��");
		List<Team> list=query.list();
		tx.commit();
		session.close();
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public Team findById(Integer tid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Team.class, tid);
	}

	@Override
	public void update(Team team) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.update(team);
		tx.commit();
		session.close();
	}

	@Override
	//ע���˵Ķ��飬��Ҫ����Աͬ�� ��ͨ���˷�������ѯ���������״̬Ϊ��������˵Ķ��顱
	public List<Team> findRegister(int begin, int pageSize) {
		// TODO Auto-generated method stub
		//�����ӣ���ѯteam��team.checkState��һ���ֵ����󡣲�ѯ�����ǡ����״̬��Ϊ�������
    	String hql="from Team team  where team.teamState=?";
//		List<Team> list=this.getHibernateTemplate().find(hql,begin,pageSize);
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(begin);  
        query.setMaxResults(pageSize);  
        query.setParameter(0,"�������");
        List<Team> list=query.list();
		//System.out.println("daoִ���ˣ�ע������δͨ���Ķ�����"+list.size());
		return list;
	}

	@Override
	public void updateTeamState(Team team) {
		// TODO Auto-generated method stub
		String sql="update Team set teamState='���ͨ��' where teamId=?";
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.createSQLQuery(sql).setParameter(0, team.getTeamId()).executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public int findRegistCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from Team where teamState='�������'";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
		
}


