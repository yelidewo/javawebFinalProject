package com.leonyip.mystore.dao.hibernateimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.leonyip.mystore.dao.OrderitemDao;
import com.leonyip.mystore.entity.Orderitem;

public class OrderitemDaoImpl extends BaseHibernateDao implements OrderitemDao {

	@Override
	public void addOrderitem(Orderitem orderitem) {
		super.add(orderitem);
	}

	@Override
	public void deleteOrderitem(int orderid) {
		super.delete(Orderitem.class, orderid);

	}

	@Override
	public List<Orderitem> searchByOrderid(int orderId) {
		String hql="from Orderitem o where o.order.id=:orderId";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("orderId", orderId);
		return super.search(hql, params);
	}

}
