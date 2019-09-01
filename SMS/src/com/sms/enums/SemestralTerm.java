package com.sms.enums;

public enum SemestralTerm {
	FIRST_TERM(1,"First Term"),
	SECOND_TERM(2, "Second Term"),
	SUMMER_TERM(3, "Summer Term");
	
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

	private SemestralTerm(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static SemestralTerm getInstance(Integer id) {
		for (SemestralTerm value: SemestralTerm.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
}
