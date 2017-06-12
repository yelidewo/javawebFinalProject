package com.leonyip.mystore.dao.hibernateimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.leonyip.mystore.dao.UserDao;
import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Goods;

public class UserDaoHibImpl extends BaseHibernateDao implements UserDao {

	@Override
	public void addUser(Admin admin) {
		// TODO Auto-generated method stub
		super.add(admin);
	}

	@Override
	public Boolean hasSameName(String userName) {
		// TODO Auto-generated method stub
		String hql = "from Admin u where u.userName = :userName";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userName", userName);
		return super.hasSameName(hql, userName, params);
	}

	@Override
	public Boolean hasUser(String userName, String password) {
		// TODO Auto-generated method stub
		String hql = "from Admin u where u.userName = :userName and u.password = :password";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userName", userName);
		params.put("password", password);
		return super.hasUser(hql, userName, password, params);
	}

	@Override
	public String getUserType(String userName) {
		// TODO Auto-generated method stub
		String hql = "select u.usertype from Admin u where u.userName = :userName";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userName", userName);
		return super.getUserType(hql, params);
	}

	@Override
	public void delUser(int id) {
		// TODO Auto-generated method stub
		super.delete(Admin.class, id);
	}

	@Override
	public void updateUser(Admin admin) {
		// TODO Auto-generated method stub
		super.update(admin);
	}

	@Override
	public Admin getUser(int id) {
		// TODO Auto-generated method stub
		return (Admin) super.get(Admin.class, id);
	}

	@Override
	public List<Admin> searchUserByKeyword(String keyword) {
		// TODO Auto-generated method stub
		String hql = "from Admin g where g.userName like :keyword ";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		return super.search(hql, params);
	}

	@Override
	public List<Admin> searchUserByKeywordPaging(String keyword, int pageNum,
			int pageSize) {
		// TODO Auto-generated method stub
		String hql = "from Admin g where g.userName like :keyword ";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		return super.searchByPaging(hql, params, pageSize, pageNum);
	}

	@Override
	public List<Admin> searchAllUserByPaging() {
		return super.search("from Admin", null);
	}


}
