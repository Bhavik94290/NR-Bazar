package com.grownited.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.grownited.entity.UserEntity;
import com.grownited.entity.WishListEntity;
import com.grownited.repository.WishListRepository;

import jakarta.servlet.http.HttpSession;

@RestController
public class WishListController {
	
	
	
	@Autowired
	WishListRepository repositoryWishlist;
	
	@GetMapping("addtowishlist/{productId}")
	public String addToWishList(@PathVariable Integer productId, HttpSession session) {

		UserEntity user = (UserEntity) session.getAttribute("user");

		WishListEntity wishListEntity = new WishListEntity(); 
		wishListEntity.setProductId(productId);
		wishListEntity.setUserId(user.getUserId());
		wishListEntity.setCreatedAt(LocalDate.now());
		
		repositoryWishlist.save(wishListEntity);
		
		
		return "";
	}
	
}
