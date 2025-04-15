package com.grownited.controller.admin;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.OrdersRepository;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.UserRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AdminController {
	
  

	@Autowired
	UserRepository repouserEntity;
	
	@Autowired
	ProductRepository repositoryproduct;
	
	@Autowired
	OrdersRepository repositoryOrder;
	
	
	@GetMapping("admindashboard")
	public String admindashboard(Model model) {
		//
		
		Long totalUsers = repouserEntity.count();//total of users table 

		
		
		Long totalOrders = repositoryOrder.count();
		Long totalProduct = repositoryproduct.count();

		LocalDate today = LocalDate.now();

		int month = today.getMonthValue();

        Integer thisMonthUserCount = repouserEntity.countThisMonthUser(month);
		
		Integer monthWiseUsers [] = new Integer[12];
 		
		for(int i = 1; i <= 12; i++) {
			monthWiseUsers [i-1] = repouserEntity.countThisMonthUser(i);
		}
		
		model.addAttribute("totalOrders",totalOrders);
		model.addAttribute("totalUser",totalUsers);
		model.addAttribute("thisMonthUserCount",thisMonthUserCount);
		model.addAttribute("monthWiseUsers",monthWiseUsers);

		model.addAttribute("totalProduct",totalProduct);
		model.addAttribute("currentMonth", LocalDate.now().getMonth().name());
		
		return "AdminDashboard";
		
	}
	
	
	
}
