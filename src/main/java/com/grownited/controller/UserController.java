package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.ProductEntity;
import com.grownited.repository.ProductRepository;

@Controller
public class UserController {
	
	@Autowired
	ProductRepository repositoryproduct;

	@GetMapping("userdashboard")
	public String userDashboard( Model model) {
List<ProductEntity> productList = repositoryproduct.findAll();
		
		model.addAttribute("allProductList", productList);
		return"UserDashboard";
	}
	
}
