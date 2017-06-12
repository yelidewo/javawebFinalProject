package com.leonyip.mystore.dao;

import java.util.List;

import com.leonyip.mystore.entity.Orderitem;

public interface OrderitemDao {
	public void addOrderitem(Orderitem orderitem);
	public void deleteOrderitem(int orderid);
	public List<Orderitem> searchByOrderid(int orderId);
}
