package com.sms.enums;

public enum PaymentMethod {
	FULL_PAYMENT(1,"Full Payment"),
	HALF_PAYMENT(2,"Half Payment");

	
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

	private PaymentMethod(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static PaymentMethod getInstance(Integer id) {
		for (PaymentMethod value: PaymentMethod.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
}
