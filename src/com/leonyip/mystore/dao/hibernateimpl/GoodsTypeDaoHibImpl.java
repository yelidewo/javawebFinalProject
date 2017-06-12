package com.leonyip.mystore.dao.hibernateimpl;

import java.util.List;

import com.leonyip.mystore.dao.GoodsTypeDao;
import com.leonyip.mystore.entity.Goods;
import com.leonyip.mystore.entity.GoodsType;

public class GoodsTypeDaoHibImpl extends BaseHibernateDao implements GoodsTypeDao {

	@Override
	public void addType(GoodsType type) {
		// TODO Auto-generated method stub
		super.add(type);
	}

	@Override
	public void deleteType(int id) {
		// TODO Auto-generated method stub
		super.delete(GoodsType.class, id);
	}

	@Override
	public void updateType(GoodsType type) {
		// TODO Auto-generated method stub
		super.update(type);
	}

	@Override
	public List<GoodsType> getAlltype() {
		// TODO Auto-generated method stub
		return super.search("from GoodsType", null);
	}

	@Override
	public GoodsType getTypeById(int id) {
		// TODO Auto-generated method stub
		return (GoodsType) super.get(Goods.class, id);
	}

	@Override
	public GoodsType getOneById(int id) {
		// TODO Auto-generated method stub
		return (GoodsType) super.get(GoodsType.class, id);
	}

}
