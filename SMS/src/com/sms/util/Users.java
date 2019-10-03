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


@SuppressWarnings("serial")
@Entity
@Table(name = "users")
@DataTransferObject
public class Users implements Serializable{
	private Long userNumber;
	private Integer userID;
	private String username;
	private String password;
	private String status;
	private String email;

	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "USER_NUMBER") 
	public Long getUserNumber() {
		return userNumber;
	}
	public void setUserNumber(Long userNumber) {
		this.userNumber = userNumber;
	}
	
	@Column(name = "USER_ID")
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	
	@Column(name = "USERNAME")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "PASSWORD")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "ACTIVE")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}