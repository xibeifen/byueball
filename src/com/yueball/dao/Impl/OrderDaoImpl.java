package com.yueball.dao.Impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yueball.dao.OrderDao;
import com.yueball.entity.Order;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	@Override
	//通过场地的id和选择的日期，来找出相应的订单
	public List<Order> findByVenueDate(Order order,Date orDate) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		String hql="from Order order where order.venueId.dictId=? and order.orderDate=?";
		Query query=session.createQuery(hql);
		query.setParameter(0, order.getVenueId().getDictId());
		query.setParameter(1,orDate);
		List<Order> list=query.list();
		if(list!=null&&list.size()>0){
			//System.out.println("OrderDao查询订单成功"+list.size());
			return list;
		}
		tx.commit();
		session.close();
		return null;
	}

	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.save(order);
		tx.commit();
		session.close();
	}

}
