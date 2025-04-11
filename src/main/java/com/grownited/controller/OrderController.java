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
import com.grownited.entity.OrdersEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.OrdersRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class OrderController {
	
	@Autowired
	OrdersRepository ordersRepo;

	@GetMapping("orders")
	public String orders() {
		return"Orders";
	}
	
	@PostMapping("saveorders")
	public String saveOrders(OrdersEntity entityOrders,HttpSession session) {
		System.out.println(entityOrders.getStatus());
		System.out.println(entityOrders.getTotalAmount());
		System.out.println(entityOrders.getCreatedAt());
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityOrders.setUserId(userId);
		entityOrders.setCreatedAt(LocalDate.now());
		ordersRepo.save(entityOrders);
		
		return"redirect:/orders";
	}
	
	@GetMapping("listorders")
	public String listOrders(Model model) {
		//List<OrdersEntity> ordersList = ordersRepo.findAll();
		List<Object[]> ordersList=ordersRepo.getAll();
		model.addAttribute("ordersList", ordersList);
		
		return"ListOrders";
	}
	
	@GetMapping("vieworder")
	public String viewOrder(Integer orderId, Model model) {
		List<Object[]> op = ordersRepo.getByOrderId(orderId);
		model.addAttribute("order", op);
		return "ViewOrder";
	}

	
	@GetMapping("deleteorder")
	public String deleteOrder(Integer orderId) {
		ordersRepo.deleteById(orderId);//delete from members where memberID = :memberId
		return "redirect:/listorders";
	}
	
	@GetMapping("editorder")
	public String editOrders(Integer orderId,Model model) {
		Optional<OrdersEntity> op = ordersRepo.findById(orderId);
		if (!op.isPresent()) {
			return "redirect:/listorders";
		} else {
			model.addAttribute("order",op.get());
			return "EditOrders";

		}
	}

	@PostMapping("updateorder")
	public String updateOrder(OrdersEntity ordersEntity) {//pcode vhreg type vid 
		
		System.out.println(ordersEntity.getOrderId());//id? db? 

		Optional<OrdersEntity> op = ordersRepo.findById(ordersEntity.getOrderId());
		
		if(op.isPresent())
		{
			OrdersEntity dbOrder = op.get(); //pcode vhreg type id userId 
			dbOrder.setStatus(ordersEntity.getStatus());//type 
			dbOrder.setTotalAmount(ordersEntity.getTotalAmount());
			//
			ordersRepo.save(dbOrder);
		}
		return "redirect:/listorders";
	}
}