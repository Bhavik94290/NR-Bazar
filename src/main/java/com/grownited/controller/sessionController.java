package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.SellerEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.SellerRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.Mailservice;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class sessionController {
	
	@Autowired
	Mailservice serviceMail;
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	SellerRepository sellerRepo;
	
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
			
	String encryptePassword = encoder.encode(userEntity.getPassword());
	userEntity.setPassword(encryptePassword);
	
	userEntity.setRole("USER");
	userRepo.save(userEntity);
	
	// send mail
	serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
	return "Login";// jsp
	
	}
	
	@GetMapping("listuser")
	public String listUser(Model model) {
		
		List<UserEntity> userList = userRepo.findAll();
		
		model.addAttribute("userList", userList);
		
		return "ListUser";
	}
	
	@GetMapping("viewuser")
	public String viewUser(Integer userId,Model model) {
		
		Optional<UserEntity> op = userRepo.findById(userId);
		
		if (op.isEmpty()) {
			// data not found
		}
		else {
			UserEntity user = op.get();
			// send data to jsp
			model.addAttribute("user", user);
		}
		
		return "ViewUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteUser(Integer userId) {
	userRepo.deleteById(userId);//delete from members where memberID = :memberId
		return "redirect:/listuser";
	}
	
	@GetMapping("newseller")
	public String newSeller() {
		return "NewSeller";
	}
	
	@PostMapping("saveseller")
	public String saveSeller(SellerEntity sellerEntity) {
		sellerRepo.save(sellerEntity);
		
		return "Login";
	}
	@GetMapping("listseller")
	public String listSeller(Model model) {
		List<SellerEntity> sellerList = 	sellerRepo.findAll();
		model.addAttribute("sellerlist", sellerList);
		return "redirect:/listseller";
	}
	
	@GetMapping("viewseller")
	public String viewSeller(Integer sellerId,Model model) {
		
		Optional<SellerEntity> op = sellerRepo.findById(sellerId);
		
		if (op.isEmpty()) {
			// data not found
		}
		else {
			SellerEntity seller = op.get();
			// send data to jsp
			model.addAttribute("seller", seller);
		}
		
		return "ViewSeller";
	}
	
	@GetMapping("deleteseller")
	public String deleteSeller(Integer sellerId) {
	sellerRepo.deleteById(sellerId);//delete from members where memberID = :memberId
		return "redirect:/listseller";
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
		
		
		
		@PostMapping("authenticate")
		public String authenticate(String email, String password,Model model) {// sakira@yopmail.com sakira
			System.out.println(email);
			System.out.println(password);

			// users -> email,password
			Optional<UserEntity> op = userRepo.findByEmail(email);
			// select * from users where email = :email and password = :password
			if (op.isPresent()) {
				// true
				// email
				UserEntity dbUser = op.get();
				if (encoder.matches(password, dbUser.getPassword())) {
					return "redirect:/home";
				}
			}
			model.addAttribute("error","Invalid Credentials");
			return "Login";
		}


	
}

