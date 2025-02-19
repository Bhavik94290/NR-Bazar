package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.grownited.entity.UserAddressEntity;
import com.grownited.repository.UserAddressRepository;




@Controller
public class UserAddressController {
	
	@Autowired
	UserAddressRepository repoUserAddress;
	
	@GetMapping("useraddress")
	public String userAddress() {
		return "UserAddress";
	}
	
	@PostMapping("saveuseraddress")
	public String saveUserAddress(UserAddressEntity userAddressEntity) {
		//TODO: process POST request
		repoUserAddress.save(userAddressEntity);
		return "UserAddress";
	}
	
	
	
	

}
