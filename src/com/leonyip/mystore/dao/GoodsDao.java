package com.leonyip.mystore.dao;

import com.leonyip.mystore.entity.Goods;
import java.util.List;

public interface GoodsDao {
	public void addGoods(Goods goods);

	public void delGoods(int id);

	public void updateGoods(Goods goods);

	public Goods getGoods(int id);

	public List<Goods> searchTop5Product(int top); // 按销量查询前5的产品

	public List<Goods> searchTop10ProductByCommend(int top); // 查询10个推荐商品

	public List<Goods> searchGoodsByKeyword(String keyword);

	public List<Goods> searchGoodsByKeywordPaging(String keyword, int pageNum,
			int pageSize);

	public List<Goods> searchGoodsPaging(int typeId, int pageNum,
			int pageSize);

	public List<Goods> getTopGoods(int top);

	public List<Goods> searchGoodsByType(int typeId);

	public List<Goods> searchAllProductByPaging(int pageNum, int pageSize);// 首页分页查询全部商品
}
