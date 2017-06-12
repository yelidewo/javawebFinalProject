package com.leonyip.mystore.struts.action;

import java.util.List;

import com.leonyip.mystore.biz.GoodsBiz;
import com.leonyip.mystore.biz.GoodsTypeBiz;
import com.leonyip.mystore.biz.impl.GoodsBizImpl;
import com.leonyip.mystore.biz.impl.GoodsTypeBizImpl;
import com.leonyip.mystore.entity.Goods;
import com.leonyip.mystore.entity.GoodsType;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InitAction extends ActionSupport {

	GoodsBiz goodsBiz = new GoodsBizImpl();
	GoodsTypeBiz goodsTypeBiz = new GoodsTypeBizImpl();
	
	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub		
		List<GoodsType> typeList = goodsTypeBiz.getAllType();		
		ActionContext context = ActionContext.getContext();
		List<Goods> goodsListSell = goodsBiz.searchTop5Product(8);
		List<Goods> goodsListCommend = goodsBiz.searchTop10ProductByCommend(8);
		context.put("goodsListSell", goodsListSell);
		context.put("goodsListCommend", goodsListCommend);
		context.put("typeList", typeList);
		return SUCCESS;
	}
	
}