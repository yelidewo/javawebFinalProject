package com.leonyip.mystore.entity;

import java.io.Serializable;

public class CartItem implements Serializable{
	private Goods goods;
	private int count;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}	
}
