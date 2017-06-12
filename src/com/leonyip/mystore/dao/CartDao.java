package com.leonyip.mystore.dao;

import java.util.List;

import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Cart;

public interface CartDao {
	public void addCart(Cart cart);//添加一个购物车
	public void updateCart(Cart cart);
	public void deleteCart(int productid);
	public void deleteCartByUserid(int adminid);
	public List<Cart> searchGoodsByGoodsid(int goodsid,Admin admin);
	public List<Cart> searchProductByCustomerId(Admin admin);
	public List<Cart> seatchProductById(int id);
}
