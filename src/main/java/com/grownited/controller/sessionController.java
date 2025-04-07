package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProductEntity;
import com.grownited.entity.SellerEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.SellerRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.Mailservice;

import jakarta.servlet.http.HttpSession;

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
	
	@Autowired
	ProductRepository productRepo;
	
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
	userEntity.setCreatedAt(LocalDate.now());
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
	
	@GetMapping("edituser")
	public String editUser(Integer userId,Model model) {
		Optional<UserEntity> op = userRepo.findById(userId);
		if (op.isEmpty()) {
			return "redirect:/listUser";
		} else {
			model.addAttribute("user",op.get());
			return "EditUser";

		}
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
	@PostMapping("sendotp")
	public String sendOtp(String email, Model model) {
		// email valid
		Optional<UserEntity> op = userRepo.findByEmail(email);
		if (op.isEmpty()) {
			// email invalid
			model.addAttribute("error", "Email not found");
			return "ForgetPassword";
		} else {
			// email valid
			// send mail otp
			// opt generate
			// send mail otp
			String otp = "";
			otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

			UserEntity user = op.get();
			user.setOtp(otp);
			userRepo.save(user);// update otp for user
			serviceMail.sendOtpForForgetPassword(email, user.getFirstName(), otp);
			return "ChangePassword";

		}
	}

	@PostMapping("updatepassword")
	public String updatePassword(String email, String password, String otp, Model model) {
		Optional<UserEntity> op = userRepo.findByEmail(email);
		if (op.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "ChangePassword";
		} else {
			UserEntity user = op.get();
			if (user.getOtp().equals(otp)) {
				String encPwd = encoder.encode(password);
				user.setPassword(encPwd);
				user.setOtp("");
				userRepo.save(user);// update
			} else {

				model.addAttribute("error", "Invalid Data");
				return "ChangePassword";
			}
		}
		model.addAttribute("msg", "Password updated");
		return "Login";
	}
		
		@PostMapping("authenticate")
		public String authenticate(String email, String password,Model model,HttpSession session) {// sakira@yopmail.com sakira
			System.out.println(email);
			System.out.println(password);

			// users -> email,password
			Optional<UserEntity> op = userRepo.findByEmail(email);
			// select * from users where email = :email and password = :password
			if (op.isPresent()) {
				// true
				// email
				UserEntity dbUser = op.get();

				boolean ans = encoder.matches(password, dbUser.getPassword());

				if (ans == true) {
					session.setAttribute("user", dbUser); // session -> user set
					if (dbUser.getRole().equals("ADMIN")) {

						return "redirect:/admindashboard";
					} else if (dbUser.getRole().equals("USER")) {

						return "redirect:/userdashboard";
					} else {
						model.addAttribute("error", "Please contact Admin with Error Code #0991");
						return "Login";
					}

				}
			}
			model.addAttribute("error","Invalid Credentials");
			return "Login";
		}

		@GetMapping("logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/Login";// login url
		}
		
		@GetMapping("userprofile")
		public String userprofile() {
			//
			return "UserProfile";
			
		}
		
		
}
