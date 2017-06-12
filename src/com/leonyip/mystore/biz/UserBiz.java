package com.leonyip.mystore.biz;

import java.util.List;

import com.leonyip.mystore.entity.Admin;

public interface UserBiz {
	public Admin getUserById(int id);
	public void addUser(Admin admin);
	public Boolean hasSameName(String userName);
	public Boolean hasUser(String userName, String password);
	public void updateUser(Admin admin);
	public void delUser(int id);
	public List<Admin> searchByKeyword(String keyword);
	public List<Admin> searchByKeywordPaging(String keyword, int pageNum, int pageSize);
	public String getUserType(String userName);
	public List<Admin> searchAllUser();
}
