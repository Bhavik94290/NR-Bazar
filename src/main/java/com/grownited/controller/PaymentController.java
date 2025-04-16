package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.CartRepository;
import com.grownited.service.Mailservice;
import com.grownited.service.PaymentService;

import jakarta.servlet.http.HttpSession;


@Controller
public class PaymentController {

	@Autowired
	PaymentService paymentService;

	@Autowired
	CartRepository cartRepository;
	
	@Autowired
	Mailservice mailservice;

	@GetMapping("checkout")
	public String checkout(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		List<Object[]> carts = cartRepository.getAllCartItemByUserId(user.getUserId());

		model.addAttribute("amount", 500.0);
		return "CheckOut";// credit card expDate

	}

	@PostMapping("pay")
	public String pay(String ccNum, String expDate, HttpSession session, Double amount) {
		UserEntity user = (UserEntity) session.getAttribute("user");

		// get all items from cart
		List<Object[]> carts = cartRepository.getAllCartItemByUserId(user.getUserId());
		
		Integer paymentId = paymentService.chargeCreditCard("3JSL6X9vgN", "622y3D73uDCKm25E", 58401.0 , ccNum,expDate, user.getEmail(), user.getUserId());
      
		String last4 = ccNum.substring(ccNum.length() - 4);
		 mailservice.sendPaymentStatusMail(user.getEmail(), user.getFirstName(), amount, last4);
		
//		cartRepo.deleteAll(userId); 

		return "redirect:/userdashboard";
	}
	
	

}