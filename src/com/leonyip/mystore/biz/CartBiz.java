package com.leonyip.mystore.biz;

import java.util.List;

import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Cart;


public interface CartBiz {
	public void addCart(Cart cart);
	public void deleteCart(int productid);
	public void deleteCartByUserid(int adminid);
	public void updateCart(Cart cart);
	public List<Cart> searchGoodsByGoodsid(int goodsid,Admin admin);
	public List<Cart> searchProductByCustomerId(Admin admin);
	public List<Cart> seatchProductById(int id);

}
