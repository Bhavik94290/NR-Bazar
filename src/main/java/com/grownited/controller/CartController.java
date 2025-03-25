package com.grownited.controller;

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
import com.grownited.repository.CartRepository;
import com.grownited.repository.ProductRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	CartRepository cartReposotory;
	
	@GetMapping("cart")
	public String cart(Model model) {
		
		List<ProductEntity> allProduct = productRepository.findAll();// all state
		model.addAttribute("allProduct",allProduct);
		return"Cart";
	}
	
	@PostMapping("savecart")
	public String saveCart(CartEntity entityCart, HttpSession session) {
		System.out.println(entityCart.getQuantity());
		cartReposotory.save(entityCart);
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityCart.setUserId(userId);
		cartReposotory.save(entityCart);
		return"redirect:/cart";
	}
	
	@GetMapping("listcart")
	public String listCart(Model model) {
		List<Object[]> cartList = cartReposotory.getAll();
		
		model.addAttribute("allCartList", cartList);
		
		return"ListCart";
	}
	
	@GetMapping("viewcart")
	public String viewCart(Integer cartId, Model model) {
		List<Object[]> op = cartReposotory.getByCartId(cartId);
		model.addAttribute("cart", op);
		return "ViewCart";
	}
	
	@GetMapping("deletecart")
	public String deleteCart(Integer cartId) {
		cartReposotory.deleteById(cartId);//delete from members where memberID = :memberId
		return "redirect:/listcart";
	}
	
	@GetMapping("editcart")
	public String editCart(Integer cartId,Model model) {
		Optional<CartEntity> op = cartReposotory.findById(cartId);
		if (op.isEmpty()) {
			return "redirect:/listcart";
		} else {
			model.addAttribute("cart",op.get());
			return "EditCart";

		}
	}

	@PostMapping("updatecart")
	public String updateCart(CartEntity cartEntity) {//pcode vhreg type vid 
		
		System.out.println(cartEntity.getCartId());//id? db? 

		Optional<CartEntity> op = cartReposotory.findById(cartEntity.getCartId());
		
		if(op.isPresent())
		{
			CartEntity dbCart = op.get(); //pcode vhreg type id userId 
			dbCart.setQuantity(cartEntity.getQuantity());//type 
			//
			cartReposotory.save(dbCart);
		}
		return "redirect:/listcart";
	}

}