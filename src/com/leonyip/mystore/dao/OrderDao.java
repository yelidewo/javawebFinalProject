package com.leonyip.mystore.dao;

import java.util.List;

import com.leonyip.mystore.entity.Order;

public interface OrderDao {
	public void addOrder(Order order);
	public void deleteOrder(int id);
	public void updateOrder(Order order);
	public List<Order> searchByUser(int userid);
	public List<Order> getAllOrder(int status);
	public Order getOrderById(int id);
}
