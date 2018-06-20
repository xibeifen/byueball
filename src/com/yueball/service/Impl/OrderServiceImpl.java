package com.yueball.service.Impl;

import java.util.Date;
import java.util.List;

import com.yueball.dao.OrderDao;
import com.yueball.entity.Order;
import com.yueball.service.OrderService;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}


	public List<Order> findByVenueDate(Order order,Date orDate) {
		// TODO Auto-generated method stub
		List<Order> olist=orderDao.findByVenueDate(order,orDate);
		
		return olist;
	}


	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		orderDao.saveOrder(order);
	}

}
