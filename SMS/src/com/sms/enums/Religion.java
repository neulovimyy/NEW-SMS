package com.sms.enums;

public enum Religion {
	ROMAN_CATHOLIC(1,"Roman Catholic"), 
	BUDDHIST(2,"Buddhist"), 
	JEHOVAH_WITHNESS(3,"Jehova's Witnesses"),
	BAPTIST(4,"Baptist"), 
	PROTESTANT(5,"Protestant"),
	SEVENTH_DAY_ADVENTIST(6,"Seventh Day Adventist"), 
	MORMON(7,"Mormon"), 
	ISLAM(8, "Islam"), 
	CHRISTIAN(9, "Christian");
	
	private Integer id;
	private String description;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	private Religion(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static Religion getInstance(Integer id) {
		for (Religion value: Religion.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
}