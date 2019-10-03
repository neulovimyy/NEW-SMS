package com.sms.util;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

@Entity
@Table(name = "roles")
@DataTransferObject
public class Roles implements Serializable {

	private static final long serialVersionUID = 496208080806401237L;

	private Integer id;
	private String key;
	private String value;

	private Users user;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "USER_ROLE_ID")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@OneToOne(fetch = FetchType.EAGER, targetEntity = Users.class)
	@JoinColumn(name = "USER_ID")
	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Column(name = "AUTHORITY")
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}