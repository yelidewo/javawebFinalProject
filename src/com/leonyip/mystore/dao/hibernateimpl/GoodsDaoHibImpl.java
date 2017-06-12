package com.leonyip.mystore.dao.hibernateimpl;

import java.util.List;
import java.io.*;
import java.util.*;

import com.leonyip.mystore.dao.GoodsDao;
import com.leonyip.mystore.entity.Goods;

public class GoodsDaoHibImpl extends BaseHibernateDao implements GoodsDao {

	@Override
	public void addGoods(Goods goods) {
		super.add(goods);

	}

	@Override
	public void delGoods(int id) {
		super.delete(Goods.class, id);
	}

	@Override
	public void updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		super.update(goods);
	}

	@Override
	public Goods getGoods(int id) {
		// TODO Auto-generated method stub
		return (Goods) super.get(Goods.class, id);
	}

	@Override
	public List<Goods> searchGoodsByKeyword(String keyword) {
		// TODO Auto-generated method stub
		String hql = "from Goods g where g.goodsName like :keyword or g.goodsDesc like :keyword";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%" + keyword + "%");
		return super.search(hql, params);
	}

	@Override
	public List<Goods> getTopGoods(int top) {
		// TODO Auto-generated method stub
		String hql = "from Goods g order by g.sellCount desc";
		return searchByPaging(hql, null, top, 1);
	}

	@Override
	public List<Goods> searchGoodsByKeywordPaging(String keyword, int pageNum,
			int pageSize) {
		// TODO Auto-generated method stub
		String hql = "from Goods g where g.goodsName like :keyword or g.goodsDesc like :keyword";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%" + keyword + "%");

		return super.searchByPaging(hql, params, pageSize, pageNum);
	}

	@Override
	public List<Goods> searchGoodsByType(int typeId) {
		// TODO Auto-generated method stub
		String hql = "from Goods g where g.goodsType.id = :typeId";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("typeId", typeId);
		return super.search(hql, params);
	}

	@Override
	public List<Goods> searchAllProductByPaging(int pageNum, int pageSize) {
		String hql = "from Goods p order by id desc";
		return super.searchByPaging(hql, null, pageSize, pageNum);
	}

	@Override
	public List<Goods> searchTop5Product(int top) {
		String hql = "from Goods p order by p.sellCount desc";
		return super.searchTopNo(hql, null, 10);
	}

	@Override
	public List<Goods> searchTop10ProductByCommend(int top) {
		String hql = "from Goods p order by p.createTime";
		return super.searchTopNo(hql, null, 10);
	}

	@Override
	public List<Goods> searchGoodsPaging(int typeId, int pageNum,
			int pageSize) {
		// TODO Auto-generated method stub
		String hql = "from Goods g where g.goodsType.id = :typeId";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("typeId", typeId);
		return super.searchByPaging(hql, params, pageSize, pageNum);
	}
}
