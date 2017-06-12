package com.leonyip.mystore.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer id;
	private GoodsType goodsType;
	private String goodsName;
	private String goodsDesc;
	private Double price;
	private Double discount;
	private String img;
	private Integer sellCount;
	private Integer sumCount;
	private Timestamp createTime;
	private Set carts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** minimal constructor */
	public Goods(String goodsName, Double price) {
		this.goodsName = goodsName;
		this.price = price;
	}

	/** full constructor */
	public Goods(GoodsType goodsType, String goodsName, String goodsDesc,
			Double price, Double discount, String img, Integer sellCount,
			Integer sumCount, Timestamp createTime, Set carts) {
		this.goodsType = goodsType;
		this.goodsName = goodsName;
		this.goodsDesc = goodsDesc;
		this.price = price;
		this.discount = discount;
		this.img = img;
		this.sellCount = sellCount;
		this.sumCount = sumCount;
		this.createTime = createTime;
		this.carts = carts;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public GoodsType getGoodsType() {
		return this.goodsType;
	}

	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}

	public String getGoodsName() {
		return this.goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsDesc() {
		return this.goodsDesc;
	}

	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getDiscount() {
		return this.discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Integer getSellCount() {
		return this.sellCount;
	}

	public void setSellCount(Integer sellCount) {
		this.sellCount = sellCount;
	}

	public Integer getSumCount() {
		return this.sumCount;
	}

	public void setSumCount(Integer sumCount) {
		this.sumCount = sumCount;
	}

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Set getCarts() {
		return this.carts;
	}

	public void setCarts(Set carts) {
		this.carts = carts;
	}

}