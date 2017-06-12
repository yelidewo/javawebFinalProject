package com.leonyip.mystore.biz.impl;

import java.util.List;

import com.leonyip.mystore.biz.CartBiz;
import com.leonyip.mystore.dao.CartDao;
import com.leonyip.mystore.dao.hibernateimpl.CartDaoHibImpl;
import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Cart;

public class CartBizImpl implements CartBiz {
 
	CartDao cartDao = new CartDaoHibImpl();
	@Override
	public void addCart(Cart cart) {
		cartDao.addCart(cart);
	}
	
	@Override
	public List<Cart> searchProductByCustomerId(Admin admin) {
		return cartDao.searchProductByCustomerId(admin);
	}

	@Override
	public void deleteCart(int productid) {
		cartDao.deleteCart(productid);
		
	}

	@Override
	public List<Cart> seatchProductById(int id) {
		return cartDao.seatchProductById(id);
	}

	@Override
	public List<Cart> searchGoodsByGoodsid(int goodsid,Admin admin) {
		// TODO Auto-generated method stub
		return cartDao.searchGoodsByGoodsid(goodsid,admin);
	}

	@Override
	public void updateCart(Cart cart) {
		// TODO Auto-generated method stub
		cartDao.updateCart(cart);
	}

	@Override
	public void deleteCartByUserid(int adminid) {
		// TODO Auto-generated method stub
		cartDao.deleteCartByUserid(adminid);
	}

	
}
