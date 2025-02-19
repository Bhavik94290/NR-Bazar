package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.Mailservice;
@Controller
public class sessionController {
	
	@Autowired
	Mailservice serviceMail;
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	PasswordEncoder encoder;
	
	@GetMapping (value = {"signup","/"})
	public String signup() {
		return "Signup";
		
	}
	
//	@Autowired
//	private void UserRepo() {
//		// TODO Auto-generated method stub
//
//	} repositoryUser;


	@GetMapping("login")
	public String login() {
		
		return "Login";
	}
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity) {
		System.out.println(userEntity.getFirstName());
		
		userEntity.setRole("USER");
		userRepo.save(userEntity);
		
	String encryptePassword = encoder.encode(userEntity.getPassword());
	userEntity.setPassword(encryptePassword);
	
	
		
		userRepo.save(userEntity);	
		// send mail
				serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
				
				return "redirect:/listuser";// jsp
	}
	
	@GetMapping("listuser")
	public String listUser(Model model) {
		
		List<UserEntity> userList = userRepo.findAll();
		
		model.addAttribute("userList", userList);
		
		return "ListUser";
	}
	
	@GetMapping("forgetpassword")
	public String forgetPass() {
		
		return "ForgetPassword";
	}
	
	// submit on forgetpassword ->
		@PostMapping("sendOtp")
		public String sendOtp() {
			return "ChagePassword";
		}

		@PostMapping("updatepassword")
		public String updatePassword() {
			return "Login";
		}
	
}

