package com.sms.enums;

public enum IsApproved {
	APPROVED(1,"Approved"), 
	DECLINED(2, "Declined"), 
	FOR_APPROVAL(3, "For Approval");
	
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

	private IsApproved(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static IsApproved getInstance(Integer id) {
		for (IsApproved value: IsApproved.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
}