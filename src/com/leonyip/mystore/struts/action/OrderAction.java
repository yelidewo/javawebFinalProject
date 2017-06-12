package com.leonyip.mystore.struts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.leonyip.mystore.biz.CartBiz;
import com.leonyip.mystore.biz.GoodsBiz;
import com.leonyip.mystore.biz.OrderBiz;
import com.leonyip.mystore.biz.OrderitemBiz;
import com.leonyip.mystore.biz.impl.CartBizImpl;
import com.leonyip.mystore.biz.impl.GoodsBizImpl;
import com.leonyip.mystore.biz.impl.OrderBizImpl;
import com.leonyip.mystore.biz.impl.OrderitemBizImpl;
import com.leonyip.mystore.entity.Admin;
import com.leonyip.mystore.entity.Cart;
import com.leonyip.mystore.entity.Goods;
import com.leonyip.mystore.entity.Order;
import com.leonyip.mystore.entity.Orderitem;
import com.leonyip.mystore.entity.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrderAction extends ActionSupport implements ModelDriven<Order> {
	OrderBiz orderBiz = new OrderBizImpl();
	CartBiz cartBiz = new CartBizImpl();
	OrderitemBiz orderitemBiz = new OrderitemBizImpl();
	GoodsBiz goodsBiz = new GoodsBizImpl();
	private Order order = new Order();
	private double sum;
	private List<Cart> cartList;
	public String statusWord;

	public String getStatusWord() {
		return statusWord;
	}

	public void setStatusWord(String statusWord) {
		this.statusWord = statusWord;
	}

	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
	}

	public double getSum() {
		return sum;
	}

	public void setSum(double sum) {
		this.sum = sum;
	}

	/**
	 * @return
	 */
	public String toOrder() {
		// TODO Auto-generated method stub
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		cartList = (List<Cart>) session.get("cartList");
		System.out.println(cartList.size() + "---订单");
		session.put("sum", sum);
		System.out.println(sum + "---");
		return "order";
	}

	/**
	 * @return
	 */
	public String doAddOrder() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		int id=(Integer) session.get("id");
		double sum = (Double) session.get("sum");
		// UserInfo user = (UserInfo) session.get("loginedUser");//未实现

		order.setTime(new Timestamp(System.currentTimeMillis()));
		order.setAmount(sum);
		UserInfo u = new UserInfo();
		u.setId(id);
		order.setUserInfo(u);
		order.setStatus(0);
		orderBiz.addOrder(order);

		cartList = (List<Cart>) session.get("cartList");
		for (int i = 0; i < cartList.size(); i++) {
			System.out.println(cartList.size() + "<<<---");
			Orderitem orderitem = new Orderitem();
			System.out.println(order.getId() + "==="
					+ cartList.get(i).getGoods().getId() + "==="
					+ cartList.get(i).getGoods().getPrice() + "===");
			orderitem.setOrder(order);
			orderitem.setCount(cartList.get(i).getCount());
			orderitem.setGoodsname(cartList.get(i).getGoods().getGoodsName());
			orderitem.setPrice(cartList.get(i).getGoods().getPrice());
			orderitemBiz.addOrderItem(orderitem);
		}

		Admin admin = new Admin();
		admin.setId(id);
		List<Cart> cartListDelete = cartBiz.searchProductByCustomerId(admin);
		for (int i = 0; i < cartListDelete.size(); i++) {
			cartBiz.deleteCart(cartListDelete.get(i).getId());
			int goodsid = cartListDelete.get(i).getGoods().getId();
			int count = cartListDelete.get(i).getCount();
			Goods goods = goodsBiz.getGoodsById(goodsid);
			goods.setSumCount(goods.getSumCount() - count);
			goods.setSellCount(goods.getSellCount() + count);
			goodsBiz.updateGoods(goods);
		}

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charSet=utf-8");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print("<script type=\"text/javascript\">alert(\"订单已生成!\");window.open(\"init.action\",\"_self\");</script>");
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
		}

		return "";
	}

	public String doSearchOrder() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		int id=(Integer) session.get("id");
		List<Order> orderList = orderBiz.searchByUser(id);
		session.put("orderList", orderList);
		return "myorder";
	}

	public String doSearchOrderItem() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		System.out.println(order.getId() + "====");
		List<Orderitem> orderItemList = orderitemBiz.searchByOrderid(order
				.getId());
		System.out.println(orderItemList.size() + "===");
		session.put("orderItemList", orderItemList);
		return "myorderitem";
	}

	public String doSearchAllOrder() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		List<Order> orderList = orderBiz.getAllOrder(0);
		session.put("orderList", orderList);
		//System.out.println(orderList.size() + "===");
		return "allOrder";
	}

	public String doUpdateOrder() {
		System.out.println(order.getId() + "-->>" + statusWord);
		Order orderUpdate = orderBiz.getOrderById(order.getId());
		if (statusWord.equals("1")) {
			orderUpdate.setStatus(1);
		} else if (statusWord.equals("2")) {
			orderUpdate.setStatus(2);
		}
		orderBiz.updateOrder(orderUpdate);
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		List<Order> orderList = orderBiz.getAllOrder(0);
		session.put("orderList", orderList);
		System.out.println(orderList.size() + "===");
		return "allOrder";
	}

	public String doGetOrderById() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		Order orderNew = new Order();
		orderNew = orderBiz.getOrderById(order.getId());
		session.put("orderNew", orderNew);
		System.out.println(orderNew.getId() + "->>" + orderNew.getTime()
				+ "->>");
		return "updateOrder";
	}

	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}
}