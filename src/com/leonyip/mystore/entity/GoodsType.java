package com.leonyip.mystore.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * GoodsType entity. @author MyEclipse Persistence Tools
 */

public class GoodsType implements java.io.Serializable {

	// Fields

	private Integer id;
	private String typeName;
	private Set goodses = new HashSet(0);

	// Constructors

	/** default constructor */
	public GoodsType() {
	}

	/** minimal constructor */
	public GoodsType(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public GoodsType(String typeName, Set goodses) {
		this.typeName = typeName;
		this.goodses = goodses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Set getGoodses() {
		return this.goodses;
	}

	public void setGoodses(Set goodses) {
		this.goodses = goodses;
	}

}