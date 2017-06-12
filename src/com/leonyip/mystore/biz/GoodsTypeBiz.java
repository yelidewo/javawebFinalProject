package com.leonyip.mystore.biz;

import java.util.List;

import com.leonyip.mystore.entity.GoodsType;

public interface GoodsTypeBiz {
	public void addType(GoodsType type);	
	public void deleteType(int id);
	public void updateType(GoodsType type);
	public GoodsType getOneById(int id);
	public List<GoodsType> getAllType();
}
