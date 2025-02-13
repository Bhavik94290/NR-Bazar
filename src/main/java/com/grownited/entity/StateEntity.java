package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity // create table
@Table(name = "state") // table name set
public class StateEntity {
	@Id //primary key 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userID;//primary key
	private String state;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
