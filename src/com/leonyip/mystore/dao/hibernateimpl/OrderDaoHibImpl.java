package com.leonyip.mystore.dao.hibernateimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.leonyip.mystore.dao.OrderDao;
import com.leonyip.mystore.entity.Order;

public class OrderDaoHibImpl extends BaseHibernateDao implements OrderDao {

	@Override
	public void addOrder(Order order) {
		// TODO Auto-generated method stub
		super.add(order);
	}

	@Override
	public void deleteOrder(int id) {
		// TODO Auto-generated method stub
		super.delete(Order.class, id);
	}

	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub
		super.update(order);
	}

	@Override
	public List<Order> searchByUser(int userid) {
		// TODO Auto-generated method stub
		String hql = "from Order o where o.userInfo.id = :userId";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userId", userid);
		return super.search(hql, params);
	}

	@Override
	public List<Order> getAllOrder(int status) {
		// TODO Auto-generated method stub		
		String hql = "from Order o where o.status = :status";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("status", status);
		return super.search(hql, params);
	}

	@Override
	public Order getOrderById(int id) {
		// TODO Auto-generated method stub
		return (Order) super.get(Order.class, id);
	}

}
