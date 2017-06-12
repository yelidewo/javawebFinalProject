package com.leonyip.mystore.biz.impl;

import java.util.List;

import com.leonyip.mystore.biz.UserBiz;
import com.leonyip.mystore.dao.UserDao;
import com.leonyip.mystore.dao.hibernateimpl.UserDaoHibImpl;
import com.leonyip.mystore.entity.Admin;

public class UserBizHibImpl implements UserBiz {
	
	//“¿¿µ
	UserDao userDao = new UserDaoHibImpl();

	@Override
	public void addUser(Admin admin) {
		// TODO Auto-generated method stub
		userDao.addUser(admin);
	}
	
	@Override
	public Boolean hasSameName(String userName) {
		// TODO Auto-generated method stub
		return userDao.hasSameName(userName);
	}

	@Override
	public Boolean hasUser(String userName, String password) {
		// TODO Auto-generated method stub
		return userDao.hasUser(userName, password);
	}
	
	@Override
	public void updateUser(Admin admin) {
		// TODO Auto-generated method stub
		userDao.updateUser(admin);
	}

	@Override
	public Admin getUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.getUser(id);
	}

	@Override
	public void delUser(int id) {
		userDao.delUser(id);
		
	}

	@Override
	public List<Admin> searchByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return userDao.searchUserByKeyword(keyword);
	}

	@Override
	public List<Admin> searchByKeywordPaging(String keyword, int pageNum,
			int pageSize) {
		return userDao.searchUserByKeywordPaging(keyword, pageNum, pageSize);
	}

	@Override
	public String getUserType(String userName) {
		return userDao.getUserType(userName);
	}

	@Override
	public List<Admin> searchAllUser() {
		
		return userDao.searchAllUserByPaging();
	}

	
}
