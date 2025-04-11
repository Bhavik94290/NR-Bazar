package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CartEntity;
import com.grownited.entity.ProductEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.WishListEntity;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.WishListRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class WishListController {
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	WishListRepository wishListRepo;
	
	@GetMapping("wishlist")
	public String wishList(Model model) {
		
		List<ProductEntity> allProduct = productRepository.findAll();// all state
		model.addAttribute("allProduct",allProduct);
		return"WishList";
	}
	
	@PostMapping("savewishlist")
	public String saveWishList(WishListEntity entityWishList,HttpSession session) {
		System.out.println(entityWishList.getCreatedAt());
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityWishList.setUserId(userId);
		entityWishList.setCreatedAt(LocalDate.now());
		wishListRepo.save(entityWishList);
		
		return"redirect:/wishlist";
	}

	@GetMapping("listwishlist")
	public String listWishList(Model model) {
		List<Object[]> wishListList = wishListRepo.getAll();
		
		model.addAttribute("allWishListList", wishListList);
		
		return"ListWishList";
	}
	
	@GetMapping("viewwishlist")
	public String viewWishList(Integer wishListId, Model model) {
		List<Object[]> op = wishListRepo.getByWishListId(wishListId);
		model.addAttribute("wishList", op);
		return "ViewWishList";
	}
	
	@GetMapping("deletewishlist")
	public String deleteWishList(Integer wishListId) {
		wishListRepo.deleteById(wishListId);//delete from members where memberID = :memberId
		return "redirect:/listwishlist";
	}
	
	@GetMapping("editwishlist")
	public String editWishList(Integer wishListId,Model model) {
		Optional<WishListEntity> op = wishListRepo.findById(wishListId);
		if (!op.isPresent()) {
			return "redirect:/listwishlist";
		} else {
			model.addAttribute("wishList",op.get());
			return "EditWishList";

		}
	}

	@PostMapping("updatewishlist")
	public String updateWishList(WishListEntity wishListEntity) {//pcode vhreg type vid 
		
		System.out.println(wishListEntity.getWishListId());//id? db? 

		Optional<WishListEntity> op = wishListRepo.findById(wishListEntity.getWishListId());
		
		if(op.isPresent())
		{
			WishListEntity dbWishList = op.get(); //pcode vhreg type id userId 
			//dbWishList.setCreateAt(wishListEntity.getCreateAt());//type 
			//
			wishListRepo.save(dbWishList);
		}
		return "redirect:/listwishlist";
	}
}