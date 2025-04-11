package com.grownited.controller;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CartEntity;
import com.grownited.entity.OrderDetailsEntity;
import com.grownited.entity.OrdersEntity;
import com.grownited.entity.ProductEntity;
import com.grownited.repository.OrderDetailsRepository;
import com.grownited.repository.OrdersRepository;
import com.grownited.repository.ProductRepository;

@Controller
public class OrderDetailsController {
	
	@Autowired
	OrdersRepository ordersRepository;
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	OrderDetailsRepository orderDetailsRepo;
	
	@GetMapping("orderdetails")
	public String orderDetails(Model model) {
		List<OrdersEntity> allOrders = ordersRepository.findAll();// all state
		model.addAttribute("allOrders",allOrders);
		
		List<ProductEntity> allProducts = productRepository.findAll();// all state
		model.addAttribute("allProducts",allProducts);
		
		return"OrderDetails";
	}
	
	@PostMapping("saveorderdetails")
	public String saveOrderDetails(OrderDetailsEntity entityOrderDetails) {
		System.out.println(entityOrderDetails.getQuantity());
		System.out.println(entityOrderDetails.getPrice());
		System.out.println(entityOrderDetails.getStatus());
		orderDetailsRepo.save(entityOrderDetails);
		return"OrderDetails";
	}
	
	@GetMapping("listorderdetails")
	public String listOrderDetails(Model model) {
		List<Object[]> orderDetailsList = orderDetailsRepo.getAll();
		
		model.addAttribute("allOrderDetailsList", orderDetailsList);
		
		return"ListOrderDetails";
	}
		
	@GetMapping("vieworderDetail")
	public String viewOrderDetail(Integer orderDetailId, Model model) {
		List<Object[]> op = orderDetailsRepo.getByOrderDetailId(orderDetailId);
		model.addAttribute("orderDetail", op);
		return "ViewOrderDetails";
	}
	
	@GetMapping("deleteorderDetail")
	public String deleteOrderDetail(Integer orderDetailId) {
		orderDetailsRepo.deleteById(orderDetailId);//delete from members where memberID = :memberId
		return "redirect:/listorderdetails";
	}
	
	@GetMapping("editorderDetail")
	public String editOrderDetails(Integer orderDetailId,Model model) {
		Optional<OrderDetailsEntity> op = orderDetailsRepo.findById(orderDetailId);
		if (!op.isPresent()) {
			return "redirect:/listorderdetails";
		} else {
			model.addAttribute("orderdetails",op.get());
			return "EditOrderDetails";

		}
	}

	@PostMapping("updateorderdetail")
	public String updateOderDetails(OrderDetailsEntity orderDetailsEntity) {//pcode vhreg type vid 
		
		System.out.println(orderDetailsEntity.getOrderDetailId());//id? db? 

		Optional<OrderDetailsEntity> op = orderDetailsRepo.findById(orderDetailsEntity.getOrderDetailId());
		
		if(op.isPresent())
		{
			OrderDetailsEntity dbOrderDetail = op.get(); //pcode vhreg type id userId 
			dbOrderDetail.setQuantity(orderDetailsEntity.getQuantity());//type 
			dbOrderDetail.setPrice(orderDetailsEntity.getPrice());//type 
			dbOrderDetail.setStatus(orderDetailsEntity.getStatus());//type 
			//
			orderDetailsRepo.save(dbOrderDetail);
		}
		return "redirect:/listorderdetails";
	}

}