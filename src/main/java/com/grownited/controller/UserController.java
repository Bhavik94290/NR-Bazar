
package com.grownited.controller;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.ProductEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CartRepository;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.WishListRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	ProductRepository repositoryproduct;
	
	@Autowired
	CartRepository repositoryCart;
	
	@Autowired
	WishListRepository repositoryWishlist;

	@GetMapping("userdashboard")
	public String home(Model model,HttpSession session,Integer productId) {
		//
	List<ProductEntity> allProduct = repositoryproduct.findAll();// all state
	model.addAttribute("allProduct",allProduct);
	System.out.println("product="+allProduct);
	
	UserEntity user  = (UserEntity)session.getAttribute("user");
	Integer totalWishlist  = repositoryWishlist.findByUserId(user.getUserId()).size();
	model.addAttribute("totalWishlist",totalWishlist);
	
	Integer totalCart = repositoryCart.findByUserId(user.getUserId()).size();
	model.addAttribute("totalCart", totalCart);

	return "UserDashboard";
	}
	
	@GetMapping("about")
	public String About(Model model,HttpSession session) {
		
		UserEntity user  = (UserEntity)session.getAttribute("user");
		Integer totalWishlist  = repositoryWishlist.findByUserId(user.getUserId()).size();
		model.addAttribute("totalWishlist",totalWishlist);
		
		Integer totalCart = repositoryCart.findByUserId(user.getUserId()).size();
		model.addAttribute("totalCart", totalCart);
		
		return "About";
	}
	
	@GetMapping("contact")
	public String Contact(Model model,HttpSession session) {
		
		UserEntity user  = (UserEntity)session.getAttribute("user");
		Integer totalWishlist  = repositoryWishlist.findByUserId(user.getUserId()).size();
		model.addAttribute("totalWishlist",totalWishlist);
		
		Integer totalCart = repositoryCart.findByUserId(user.getUserId()).size();
		model.addAttribute("totalCart", totalCart);
		
		return "Contact";
	}
	
	@GetMapping("blog")
	public String Blog(Model model,HttpSession session) {
		
		UserEntity user  = (UserEntity)session.getAttribute("user");
		Integer totalWishlist  = repositoryWishlist.findByUserId(user.getUserId()).size();
		model.addAttribute("totalWishlist",totalWishlist);
		
		Integer totalCart = repositoryCart.findByUserId(user.getUserId()).size();
		model.addAttribute("totalCart", totalCart);
		
		return "blog";
	}
	
	@GetMapping("wishlist")
	public String wishlist(Integer productId, Model model,HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
	    Integer userId = user.getUserId(); 
		
		
		/*
		 * List<ProductEntity> allProduct = productRepo.findAll();// all state
		 * model.addAttribute("allProduct",allProduct); List<Object[]> op =
		 * productRepo.getByProductId(productId);
		 */
		
		List<ProductEntity> wishlistProducts = repositoryproduct.findWishlistProductsByUserId(userId); // You need this method
	    model.addAttribute("wishlistProducts", wishlistProducts);
		
		Integer totalWishlist  = repositoryWishlist.findByUserId(user.getUserId()).size();
		model.addAttribute("totalWishlist",totalWishlist);
		
		Integer totalCart = repositoryCart.findByUserId(user.getUserId()).size();
		model.addAttribute("totalCart", totalCart);
		
	    return "WishList";  // Refers to quickview.jsp or a Thymeleaf template
	}

	
}
