package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.OrdersEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.OrdersRepository;
import com.grownited.repository.UserRepository;

@Controller

public class AdminReportController {

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	OrdersRepository orderRepository;
	
	@GetMapping("salesreport")
	public String salesReport() {
		return "SalesReport";
	}
	
	@GetMapping("customerreport")
	public String customerReport(Model model) {
		
	List<UserEntity> users = 	userRepository.findByRole("USER");
		
		model.addAttribute("userList",users);
		return "CustomerReport";
	}
	
	@GetMapping("orderreport")
	public String orderReport(Model model) {
		
		List<Object[]> getAllPendingOrders = orderRepository.getAllPendingOrders();
		
		model.addAttribute("getAllPendingOrders",getAllPendingOrders);
		
		return "OrderReport";
	}
	

	
}
