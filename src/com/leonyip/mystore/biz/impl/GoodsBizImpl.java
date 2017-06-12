package com.leonyip.mystore.biz.impl;

import java.util.List;

import com.leonyip.mystore.biz.GoodsBiz;
import com.leonyip.mystore.dao.GoodsDao;
import com.leonyip.mystore.dao.hibernateimpl.GoodsDaoHibImpl;
import com.leonyip.mystore.entity.Goods;

public class GoodsBizImpl implements GoodsBiz {

	GoodsDao goodsDao = new GoodsDaoHibImpl();

	@Override
	public List<Goods> getTop110Goods() {
		// TODO Auto-generated method stub
		return goodsDao.getTopGoods(10);
	}

	@Override
	public Goods getGoodsById(int id) {
		// TODO Auto-generated method stub
		return goodsDao.getGoods(id);
	}

	@Override
	public void addGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDao.addGoods(goods);
	}

	@Override
	public void updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDao.updateGoods(goods);
	}

	@Override
	public List<Goods> searchByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return goodsDao.searchGoodsByKeyword(keyword);
	}

	@Override
	public List<Goods> searchByKeywordPaging(String keyword, int pageNum,
			int pageSize) {
		// TODO Auto-generated method stub
		return goodsDao.searchGoodsByKeywordPaging(keyword, pageNum, pageSize);
	}

	@Override
	public List<Goods> searchGoodsPaging(int typeId, int pageNum,
			int pageSize) {
		// TODO Auto-generated method stub
		return goodsDao.searchGoodsPaging(typeId, pageNum, pageSize);
	}

	@Override
	public List<Goods> searchByType(int typeId) {
		// TODO Auto-generated method stub
		return goodsDao.searchGoodsByType(typeId);
	}

	@Override
	public List<Goods> searchAllGoods(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return goodsDao.searchAllProductByPaging(pageNum, pageSize);
	}

	@Override
	public void deleteGoods(int id) {
		goodsDao.delGoods(id);
	}

	@Override
	public List<Goods> searchTop5Product(int top) {
		// TODO Auto-generated method stub
		return goodsDao.searchTop5Product(8);
	}

	@Override
	public List<Goods> searchTop10ProductByCommend(int top) {
		// TODO Auto-generated method stub
		return goodsDao.searchTop10ProductByCommend(8);
	}

}
