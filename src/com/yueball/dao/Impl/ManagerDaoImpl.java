package com.yueball.dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.ManagerDao;
import com.yueball.entity.Manager;

public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao {

	
	@Override//通过名字和密码查询管理员
	public Manager findByNameAndPassword(Manager manager) {
		// TODO Auto-generated method stub
		String hql = "from Manager where name=? and password=?";
		List<Manager> managerList = this.getHibernateTemplate().find(hql,manager.getName(),manager.getPassword());
		if(managerList.size()>0){
			// 查到数据返回第一个
			//System.out.println(managerList.get(0).getName()+"查找成功");
			return managerList.get(0);
		}/*else{
			//System.out.println("失败失败失败");
		}*/
		return null;
	}

}
