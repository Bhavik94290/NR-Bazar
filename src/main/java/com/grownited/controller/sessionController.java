package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
@Controller
public class sessionController {
	
	@GetMapping (value = {"signup","/"})
	public String signup() {
		return "Signup";
		
	}


	@GetMapping("login")
	public String login() {
		
		return "Login";
	}
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity) {
		System.out.println(userEntity.getFirstName());
		return "Login"; //jsp
	}
	
	@GetMapping("forgetpassword")
	public String forgetPass() {
		
		return "ForgetPassword";
	}
	
	
	
}

