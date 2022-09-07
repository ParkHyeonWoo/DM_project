package com.board.domain;

public class ItemInfoDTO {
	private String item_id;
	private String item_name;
	private String item_desc;
	private int item_price;
	private int item_grade;
	
	public String getItem_id() {
		return item_id;
	}
	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_desc() {
		return item_desc;
	}
	public void setItem_desc(String item_desc) {
		this.item_desc = item_desc;
	}
	public int getItem_price() {
		return item_price;
	}
	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}
	public int getItem_grade() {
		return item_grade;
	}
	public void setItem_grade(int item_grade) {
		this.item_grade = item_grade;
	}

}
