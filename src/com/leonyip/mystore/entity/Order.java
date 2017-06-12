package com.leonyip.mystore.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserInfo userInfo;
	private Double amount;
	private String address;
	private String phone;
	private String contact;
	private Timestamp time;
	private Integer status;
	private Set orderitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(UserInfo userInfo, Double amount, String address,
			String phone, String contact, Timestamp time, Integer status) {
		this.userInfo = userInfo;
		this.amount = amount;
		this.address = address;
		this.phone = phone;
		this.contact = contact;
		this.time = time;
		this.status = status;
	}

	/** full constructor */
	public Order(UserInfo userInfo, Double amount, String address,
			String phone, String contact, Timestamp time, Integer status,
			Set orderitems) {
		this.userInfo = userInfo;
		this.amount = amount;
		this.address = address;
		this.phone = phone;
		this.contact = contact;
		this.time = time;
		this.status = status;
		this.orderitems = orderitems;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Double getAmount() {
		return this.amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set getOrderitems() {
		return this.orderitems;
	}

	public void setOrderitems(Set orderitems) {
		this.orderitems = orderitems;
	}

}