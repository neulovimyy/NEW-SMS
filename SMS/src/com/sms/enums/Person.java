package com.sms.enums;

public enum Person {
	STUDENT(1,"Student"),
	FACULTY(2,"Faculty"),
	ACCOUNTING(3,"Accounting"),
	REGISTRAR(4,"Registrar"),
	ADMIN(5,"Administrator");
	
	private Person(Integer id, String description) {
		this.id = id;
		this.description = description;
	}
	
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
	
	public static Person getInstance(Integer id) {
		for(Person value :  Person.values())
			if(value.getId().equals(id)) return value;
		return null;
	}
}
