package com.kim.getjob.model.user;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {
	
	private int id;
	private String userName;
	private String userId;
	private String password;
	private String email;
	private String phone;
	private String address;
	private Timestamp createDate;
	
	@Builder
	public User(String userName, String userId, String password, String email, String phone, String address,
			Timestamp createDate) {
		this.userName = userName;
		this.userId = userId;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.createDate = createDate;
	}
	
	

}
