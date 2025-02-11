package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String saveUser() {
		return "Login"; //jsp
	}
	
	@GetMapping("forgetpassword")
	public String forgetPass() {
		
		return "ForgetPassword";
	}
	
	
}

