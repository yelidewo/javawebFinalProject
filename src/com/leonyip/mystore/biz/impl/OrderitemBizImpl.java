package com.leonyip.mystore.biz.impl;

import java.util.List;

import com.leonyip.mystore.biz.OrderitemBiz;
import com.leonyip.mystore.dao.OrderitemDao;
import com.leonyip.mystore.dao.hibernateimpl.OrderitemDaoImpl;
import com.leonyip.mystore.entity.Orderitem;

public class OrderitemBizImpl implements OrderitemBiz {

	OrderitemDao orderitemDao = new OrderitemDaoImpl();
	@Override
	public List<Orderitem> searchByOrderid(int orderId) {
		return orderitemDao.searchByOrderid(orderId);
	}
	@Override
	public void addOrderItem(Orderitem orderitem) {
		orderitemDao.addOrderitem(orderitem);
		
	}

}
