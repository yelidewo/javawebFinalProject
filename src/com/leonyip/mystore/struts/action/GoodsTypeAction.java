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
import com.opensymphony.xwork2.ModelDriven;

public class GoodsTypeAction extends ActionSupport implements ModelDriven<GoodsType> {

	private GoodsType goodsType = new GoodsType();
	GoodsTypeBiz goodsTypeBiz = new GoodsTypeBizImpl();
	
	public String doSearchByType() {
		// TODO Auto-generated method stub
		List<GoodsType> goodsTypeList = goodsTypeBiz.getAllType();
		ActionContext.getContext().put("goodsTypeList", goodsTypeList);
		return "searchResult";
	}

	@Override
	public GoodsType getModel() {
		// TODO Auto-generated method stub
		return  goodsType;
	}
	
	public String  doAddGoodsType(){
		goodsTypeBiz.addType(goodsType);
		List<GoodsType> goodsTypeList = goodsTypeBiz.getAllType();
		ActionContext.getContext().put("goodsTypeList", goodsTypeList);
		return "searchResult";
	}
	
	public String doDeleteGoodsType(){
		goodsTypeBiz.deleteType(goodsType.getId());
		List<GoodsType> goodsTypeList = goodsTypeBiz.getAllType();
		ActionContext.getContext().put("goodsTypeList", goodsTypeList);
		return "searchResult";
	}
	
	public String doSearchDeleteGoodsType(){
		List<GoodsType> goodsTypeList = goodsTypeBiz.getAllType();
		ActionContext.getContext().put("goodsTypeList", goodsTypeList);
		return "deleteGoodsType";
	}
}