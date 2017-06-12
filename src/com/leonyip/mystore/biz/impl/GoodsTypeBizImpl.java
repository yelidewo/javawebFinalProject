package com.leonyip.mystore.biz.impl;

import java.util.List;

import com.leonyip.mystore.biz.GoodsTypeBiz;
import com.leonyip.mystore.dao.GoodsTypeDao;
import com.leonyip.mystore.dao.hibernateimpl.GoodsTypeDaoHibImpl;
import com.leonyip.mystore.entity.GoodsType;

public class GoodsTypeBizImpl implements GoodsTypeBiz {

	GoodsTypeDao goodsTypeDao = new GoodsTypeDaoHibImpl();
	
	@Override
	public List<GoodsType> getAllType() {
		// TODO Auto-generated method stub
		return goodsTypeDao.getAlltype();
	}

	@Override
	public GoodsType getOneById(int id) {
		// TODO Auto-generated method stub
		return goodsTypeDao.getOneById(id);
	}

	@Override
	public void addType(GoodsType type) {
		// TODO Auto-generated method stub
		goodsTypeDao.addType(type);
	}

	@Override
	public void deleteType(int id) {
		// TODO Auto-generated method stub
		goodsTypeDao.deleteType(id);
	}

	@Override
	public void updateType(GoodsType type) {
		// TODO Auto-generated method stub
		goodsTypeDao.updateType(type);
	}

}
