package com.yueball.dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.ManagerDao;
import com.yueball.entity.Manager;

public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao {

	
	@Override//ͨ�����ֺ������ѯ����Ա
	public Manager findByNameAndPassword(Manager manager) {
		// TODO Auto-generated method stub
		String hql = "from Manager where name=? and password=?";
		List<Manager> managerList = this.getHibernateTemplate().find(hql,manager.getName(),manager.getPassword());
		if(managerList.size()>0){
			// �鵽���ݷ��ص�һ��
			//System.out.println(managerList.get(0).getName()+"���ҳɹ�");
			return managerList.get(0);
		}/*else{
			//System.out.println("ʧ��ʧ��ʧ��");
		}*/
		return null;
	}

}
