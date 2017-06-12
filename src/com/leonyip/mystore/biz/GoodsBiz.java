package com.leonyip.mystore.biz;

import java.util.*;

import com.leonyip.mystore.entity.Goods;

public interface GoodsBiz {
	public List<Goods> getTop110Goods();

	public Goods getGoodsById(int id);

	public void addGoods(Goods goods);

	public void deleteGoods(int id);

	public void updateGoods(Goods goods);

	public List<Goods> searchTop5Product(int top); // 按销量查询前5的产品

	public List<Goods> searchTop10ProductByCommend(int top); // 查询10个推荐商品

	public List<Goods> searchByKeyword(String keyword);

	public List<Goods> searchByKeywordPaging(String keyword, int pageNum,
			int pageSize);
	
	public List<Goods> searchGoodsPaging(int typeId, int pageNum,
			int pageSize);

	public List<Goods> searchByType(int typeId);

	public List<Goods> searchAllGoods(int pageNum, int pageSize);
}
