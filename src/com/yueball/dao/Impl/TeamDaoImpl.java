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
	//查询指定页
	public List<Team> findByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Team.class);
		List<Team> list = this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		return list;
	}

	@Override
	//查询队伍总数
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
	//通过队长电话号码登录.....改为密码登录
	public Team findBycapTel(Team team) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		String hql="from Team team where team.capTel=? and team.name=? and team.teamState=?";
		//List<Team> list=this.getHibernateTemplate().find(hql,team.getCapTel(),team.getName());
		Query query=session.createQuery(hql);
		query.setParameter(0,team.getCapTel());
		query.setParameter(1,team.getName());
		query.setParameter(2,"审核通过");
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
	//注册了的队伍，需要管理员同意 ，通过此方法，查询出所有审核状态为“正在审核的队伍”
	public List<Team> findRegister(int begin, int pageSize) {
		// TODO Auto-generated method stub
		//左连接，查询team。team.checkState是一个字典表对象。查询条件是“审核状态”为正在审核
    	String hql="from Team team  where team.teamState=?";
//		List<Team> list=this.getHibernateTemplate().find(hql,begin,pageSize);
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult(begin);  
        query.setMaxResults(pageSize);  
        query.setParameter(0,"正在审核");
        List<Team> list=query.list();
		//System.out.println("dao执行了，注册申请未通过的队伍有"+list.size());
		return list;
	}

	@Override
	public void updateTeamState(Team team) {
		// TODO Auto-generated method stub
		String sql="update Team set teamState='审核通过' where teamId=?";
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.createSQLQuery(sql).setParameter(0, team.getTeamId()).executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public int findRegistCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from Team where teamState='正在审核'";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
		
}


