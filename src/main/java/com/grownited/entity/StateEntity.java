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
	private Integer stateID;//primary key
	private String stateName;
	public Integer getStateID() {
		return stateID;
	}
	public void setStateID(Integer stateID) {
		this.stateID = stateID;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	
	
	
}
