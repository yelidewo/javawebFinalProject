package com.leonyip.mystore.struts.action;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.leonyip.mystore.biz.GoodsBiz;
import com.leonyip.mystore.biz.UserBiz;
import com.leonyip.mystore.biz.impl.GoodsBizImpl;
import com.leonyip.mystore.biz.impl.UserBizHibImpl;
import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Goods;
import com.leonyip.mystore.entity.GoodsType;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// 依赖
	private UserBiz userBiz = new UserBizHibImpl();
	private Admin admin = new Admin();
	private String usernum;
	private String userName;
	private String password;
	private String reuserpwd;
	private String keyword;
	private String target;
	private int pageSize;
	private int pageNum;
	private int id;

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getUsernum() {
		return usernum;
	}

	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}

	public String getReuserpwd() {
		return reuserpwd;
	}

	public void setReuserpwd(String reuserpwd) {
		this.reuserpwd = reuserpwd;
	}

	/**
	 * @return
	 */
	public String getTarget() {
		if ("user_doLogin".equals(ActionContext.getContext().getName())) {
			this.target = "/login.jsp";
		} else if ("user_doRegist".equals(ActionContext.getContext().getName())) {
			this.target = "/regist.jsp";
		}
		return target;
	}

	public String doRegist() throws Exception {
		// TODO Auto-generated method stub
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		Integer id = (Integer) session.get("id");
		System.out.println(id + "==");

		admin.setUsernum(usernum);
		admin.setUserName(userName);
		admin.setPassword(password);
		if (userBiz.hasSameName(userName)) {
			this.addFieldError(userName, "用户名已存在！");
			System.out.println("用户名已存在！");
			return "regist_fail";
		} else {
			if (password.equals(reuserpwd)) {
				userBiz.addUser(admin);
			} else {
				this.addFieldError(password, "密码不一致");
				return "regist_fail";
			}
		}

		GoodsBiz goodsBiz = new GoodsBizImpl();
		ActionContext context = ActionContext.getContext();
		List<Goods> goodsListSell = goodsBiz.searchTop5Product(8);
		List<Goods> goodsListCommend = goodsBiz.searchTop10ProductByCommend(8);
		context.put("goodsListSell", goodsListSell);
		context.put("goodsListCommend", goodsListCommend);

		if (id == null) {
			return "regist";
		} else {
			List<Admin> userList = userBiz.searchAllUser();
			ActionContext.getContext().put("userListAll", userList);
			return "searchAllUser";
		}
	}

	public String doLogin() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		if (userBiz.hasUser(userName, password)) {
			List<Admin> list = userBiz.searchByKeyword(userName);
			list.get(0);
			int userid = list.get(0).getId();
			if ("[manager]"
					.equals(String.valueOf(userBiz.getUserType(userName)))) {
				actionContext.getSession().put("userName", userName);
				actionContext.getSession().put("id", userid);
				List<Admin> userList = userBiz.searchAllUser();
				ActionContext.getContext().put("userListAll", userList);
				return "searchAllUser";
			}
			actionContext.getSession().put("id", userid);
			actionContext.getSession().put("userName", userName);

			GoodsBiz goodsBiz = new GoodsBizImpl();
			ActionContext context = ActionContext.getContext();
			List<Goods> goodsListSell = goodsBiz.searchTop5Product(8);
			List<Goods> goodsListCommend = goodsBiz
					.searchTop10ProductByCommend(8);
			context.put("goodsListSell", goodsListSell);
			context.put("goodsListCommend", goodsListCommend);
		} else {
			this.addFieldError(userName, "用户名或密码有误！");
			return "login_fail";
		}

		return "login";
	}

	public String doSearch() throws UnsupportedEncodingException {
		HttpServletRequest request = ServletActionContext.getRequest();
		if ("GET".equalsIgnoreCase(request.getMethod())) {// 取得提交方式
			this.keyword = new String(keyword.getBytes("ISO-8859-1"), "UTF-8");// URL转码
		}
		List<Admin> userList = userBiz.searchByKeyword(keyword);
		ActionContext.getContext().put("userList", userList);
		return "search";
	}

	public String doSearchAllUser() {
		List<Admin> userList = userBiz.searchAllUser();
		ActionContext.getContext().put("userListAll", userList);
		return "searchAllUser";
	}

	public String toDetail() {
		admin = userBiz.getUserById(id);
		ActionContext.getContext().getValueStack().push(admin);// 压栈
		return "detail";
	}

	public String toUpdateDetail() {
		admin = userBiz.getUserById(id);
		ActionContext.getContext().getValueStack().push(admin);// 压栈
		List<Admin> userList = userBiz.searchAllUser();
		ActionContext.getContext().put("userListAll", userList);
		return "update";
	}

	public String toUpdateDetailNew() {
		System.out.print("id=" + id + "userName=" + userName + "password"
				+ password + "usernum" + usernum);
		userBiz.getUserById(id).setId(id);
		userBiz.getUserById(id).setUsernum(usernum);
		userBiz.getUserById(id).setUserName(userName);
		userBiz.getUserById(id).setPassword(password);
		userBiz.updateUser(userBiz.getUserById(id));
		List<Admin> userList = userBiz.searchAllUser();
		ActionContext.getContext().put("userListAll", userList);
		return "updateNew";
	}

	public String toUpdatePwdNew() {
		if (password.equals(reuserpwd)) {
			List<Admin> list = userBiz.searchByKeyword(userName);
			list.get(0);
			System.out.print("userid=" + list.get(0).getId() + "username="
					+ list.get(0).getUserName() + "userpwd");
			userBiz.getUserById(list.get(0).getId()).setPassword(password);
			userBiz.updateUser(userBiz.getUserById(list.get(0).getId()));
			return "updatePwdNew";
		} else {
			return "regist_fail";// 密码不一致的错误
		}

	}

	public String doDelete() {
		userBiz.delUser(id);
		List<Admin> userList = userBiz.searchAllUser();
		ActionContext.getContext().put("userListAll", userList);
		return "delete";
	}

	public String toUpdatePwd() {
		admin = userBiz.getUserById(id);
		ActionContext.getContext().getValueStack().push(admin);// 压栈
		return "updatePwd";
	}

	public String doExit() {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		session.clear();

		GoodsBiz goodsBiz = new GoodsBizImpl();
		ActionContext context = ActionContext.getContext();
		List<Goods> goodsListSell = goodsBiz.searchTop5Product(8);
		List<Goods> goodsListCommend = goodsBiz.searchTop10ProductByCommend(8);
		context.put("goodsListSell", goodsListSell);
		context.put("goodsListCommend", goodsListCommend);
		return "exit";
	}

	public String doIntent() {
		return "login_fail";
	}
}