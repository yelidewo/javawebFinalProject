package com.leonyip.mystore.biz;

import java.util.List;

import com.leonyip.mystore.entity.Orderitem;

public interface OrderitemBiz {
	public List<Orderitem> searchByOrderid(int orderId);
	public void addOrderItem(Orderitem orderitem);
}
