package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.UserEntity;


@Controller
public class UserController {
	
	@GetMapping("home")
	public String home() {
		return "Home";
	}
//	  
//	@GetMapping("viewuser")
//	public String viewUser() {
//		return "ViewUser";
//	}

	
}
