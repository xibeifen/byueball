package com.yueball.dao;

import java.util.Date;
import java.util.List;

import com.yueball.entity.Order;

public interface OrderDao {
	List<Order> findByVenueDate(Order order,Date orDate);
	
	void saveOrder(Order order);
}
