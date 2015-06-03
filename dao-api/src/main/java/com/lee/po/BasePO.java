package com.lee.po;

import java.io.Serializable;

public class BasePO implements Serializable{

	private static final long serialVersionUID = 1L;

	private int rowSize;
	private int pageNum;
	public int getRowSize() {
		return rowSize==0?10:rowSize;
	}
	public void setRowSize(int rowSize) {
		this.rowSize = rowSize;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
	
}
