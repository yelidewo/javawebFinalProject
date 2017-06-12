package com.leonyip.mystore.biz;

import java.util.List;

import com.leonyip.mystore.entity.Order;

public interface OrderBiz {
	public void addOrder(Order order);	
	public void updateOrder(Order order);
	public List<Order> getAllOrder(int status);
	public List<Order> searchByUser(int userid);
	public Order getOrderById(int id);
}
