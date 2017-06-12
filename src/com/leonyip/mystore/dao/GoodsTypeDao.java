package com.leonyip.mystore.dao;

import java.util.List;

import com.leonyip.mystore.entity.GoodsType;

public interface GoodsTypeDao {
	public void addType(GoodsType type);
	public void deleteType(int id);
	public void updateType(GoodsType type);
	public List<GoodsType> getAlltype();
	public GoodsType getOneById(int id);
	public GoodsType getTypeById(int id);
}
