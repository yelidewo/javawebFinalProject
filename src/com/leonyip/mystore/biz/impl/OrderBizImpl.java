package com.leonyip.mystore.biz.impl;

import java.util.List;

import com.leonyip.mystore.biz.OrderBiz;
import com.leonyip.mystore.dao.OrderDao;
import com.leonyip.mystore.dao.hibernateimpl.OrderDaoHibImpl;
import com.leonyip.mystore.entity.Order;

public class OrderBizImpl implements OrderBiz {
	OrderDao orderDao = new OrderDaoHibImpl();
	@Override
	public void addOrder(Order order) {
		// TODO Auto-generated method stub
		orderDao.addOrder(order);
	}
	@Override
	public List<Order> searchByUser(int userid) {
		// TODO Auto-generated method stub
		return orderDao.searchByUser(userid);
	}
	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub
		orderDao.updateOrder(order);
	}
	@Override
	public List<Order> getAllOrder(int status) {
		// TODO Auto-generated method stub
		return orderDao.getAllOrder(status);
	}
	@Override
	public Order getOrderById(int id) {
		// TODO Auto-generated method stub
		return orderDao.getOrderById(id);
	}

}
