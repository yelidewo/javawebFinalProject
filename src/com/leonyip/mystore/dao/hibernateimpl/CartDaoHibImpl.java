package com.leonyip.mystore.dao.hibernateimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.leonyip.mystore.dao.CartDao;
import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Cart;

public class CartDaoHibImpl extends BaseHibernateDao implements CartDao {

	@Override
	public void addCart(Cart cart) {
		super.add(cart);
	}

	@Override
	public void deleteCart(int productid) {
		super.delete(Cart.class, productid);;
	}

	@Override
	public List<Cart> searchProductByCustomerId(Admin admin) {
		String hql = "from Cart c where c.admin=:admin ";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("admin", admin);
		return super.search(hql, params);
	}

	@Override
	public List<Cart> seatchProductById(int id) {
		String hql = "from Cart c where c.id=:id ";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		return super.search(hql, params);
	}

	@Override
	public List<Cart> searchGoodsByGoodsid(int goodsid,Admin admin) {
		// TODO Auto-generated method stub
		String hql = "from Cart c where c.goods.id=:goodsid and c.admin=:admin";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("goodsid", goodsid);
		params.put("admin", admin);
		return super.search(hql, params);
	}

	@Override
	public void updateCart(Cart cart) {
		// TODO Auto-generated method stub
		super.update(cart);
	}

	@Override
	public void deleteCartByUserid(int adminid) {
		// TODO Auto-generated method stub
		super.delete(Cart.class, adminid);
	}

}
