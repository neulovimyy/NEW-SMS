package com.sms.base;

import java.io.Serializable;

import javax.persistence.Transient;

public class BaseModel implements Serializable {
	private static final long serialVersionUID = 4645458955668531725L;

	private String search;
	private Integer begin;
	private String orderBy;
	private String sortBy;
	private Integer index;
	private Integer limit;

	public BaseModel() {
	}

	@Transient
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	@Transient
	public Integer getBegin() {
		return begin;
	}

	public void setBegin(Integer begin) {
		this.begin = begin;
	}

	@Transient
	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	@Transient
	public String getSortBy() {
		return sortBy;
	}

	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}

	@Transient
	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	@Transient
	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}
}