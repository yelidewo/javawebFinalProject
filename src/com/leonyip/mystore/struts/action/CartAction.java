package com.leonyip.mystore.struts.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.leonyip.mystore.biz.CartBiz;
import com.leonyip.mystore.biz.GoodsBiz;
import com.leonyip.mystore.biz.GoodsTypeBiz;
import com.leonyip.mystore.biz.impl.CartBizImpl;
import com.leonyip.mystore.biz.impl.GoodsBizImpl;
import com.leonyip.mystore.biz.impl.GoodsTypeBizImpl;
import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Cart;
import com.leonyip.mystore.entity.CartItem;
import com.leonyip.mystore.entity.Goods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CartAction extends ActionSupport implements ModelDriven<Cart> {

	private Cart cart = new Cart();
	private double price;
	private int goodsid;
	GoodsBiz goodsBiz = new GoodsBizImpl();
	GoodsTypeBiz goodsTypeBiz = new GoodsTypeBizImpl();
	CartBiz cartBiz = new CartBizImpl();

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String execute() {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	public String doAddToCart() {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		int id=(Integer) session.get("id");
		System.out.println("购物车中的id"+id);
		Admin admin = new Admin();
		admin.setId(id);
		cart.setAdmin(admin);
		cart.setGoods(goodsBiz.getGoodsById(goodsid));// 取得要放入购物车的商品
		List<Cart> cartList = cartBiz.searchProductByCustomerId(admin);
		if (cartList.size() == 0) {
			cart.setCount(1);
			cart.setSum(1 * price);
			cartBiz.addCart(cart);// 如果没有，创建之
		} else {
			System.out.println(goodsid + "--");
			List<Cart> cartListBuy = cartBiz.searchGoodsByGoodsid(goodsid,
					admin);
			System.out.println(cartListBuy.size() + "---");
			if (cartListBuy.size() != 0) {
				List<Cart> cartMoreList = cartBiz.seatchProductById(cartListBuy.get(0).getId());
				cartMoreList.get(0).setId(cartListBuy.get(0).getId());
				cartMoreList.get(0).setAdmin(cartListBuy.get(0).getAdmin());
				cartMoreList.get(0).setCount(cartListBuy.get(0).getCount() + 1);
				cartMoreList.get(0).setGoods(cartListBuy.get(0).getGoods());
				cartMoreList.get(0).setSum(cartListBuy.get(0).getGoods().getPrice()
						+ price);
				cartBiz.updateCart(cartMoreList.get(0));
			} else {
				cart.setCount(1);
				cart.setSum(1 * price);
				cartBiz.addCart(cart);
			}
		}
		double sum = 0;
		List<Cart> cartList1 = cartBiz.searchProductByCustomerId(admin);
		for (int i = 0; i < cartList1.size(); i++) {
			sum = sum + cartList1.get(i).getCount()
					* cartList1.get(i).getGoods().getPrice();
		}
		session.put("cartList", cartList1);
		session.put("sum", sum);
		System.out.println(sum + ">>>");
		return "cart";
	}

	public String doDeleteCart() {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		int id=(Integer) session.get("id");
		Admin admin = new Admin();
		admin.setId(id);
		System.out.println(cart.getId() + "---");
		cartBiz.deleteCart(cart.getId());
		List<Cart> cartList1 = cartBiz.searchProductByCustomerId(admin);
		session.put("cartList", cartList1);
		double sum = 0;
		for (int i = 0; i < cartList1.size(); i++) {
			sum = sum + cartList1.get(i).getCount()
					* cartList1.get(i).getGoods().getPrice();
		}
		session.put("sum", sum);
		return "cart";
	}

	public String doSearchCart() {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		int id=(Integer) session.get("id");
		Admin admin = new Admin();
		admin.setId(id);
		List<Cart> cartList1 = cartBiz.searchProductByCustomerId(admin);
		session.put("cartList", cartList1);
		double sum = 0;
		for (int i = 0; i < cartList1.size(); i++) {
			sum = sum + cartList1.get(i).getCount()
					* cartList1.get(i).getGoods().getPrice();
		}
		session.put("sum", sum);
		System.out.println(sum + ">>>");
		return "cart";
	}

	@Override
	public Cart getModel() {
		// TODO Auto-generated method stub
		return cart;
	}

}