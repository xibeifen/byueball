package com.yueball.service;

import java.util.Date;
import java.util.List;

import com.yueball.entity.Order;

public interface OrderService {
		List<Order> findByVenueDate(Order order,Date orDate);
		
		void saveOrder(Order order);
}
