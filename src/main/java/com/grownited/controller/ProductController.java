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
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ProductEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.SubCategoryRepository;

@Controller
public class ProductController {
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	SubCategoryRepository subCategoryRepository;
	
	@Autowired
	ProductRepository productRepo;
	
	@GetMapping("product")
	public String product(Model model) {
		
		List<CategoryEntity> allCategory = categoryRepository.findAll();// all state
		model.addAttribute("allCategory",allCategory);
		
		List<SubCategoryEntity> allSubCategory = subCategoryRepository.findAll();// all state
		model.addAttribute("allSubCategory",allSubCategory);
		return"Product";
	}
	
	@PostMapping("saveproduct")
	public String saveProduct(ProductEntity entityProduct) {
		
		System.out.println(entityProduct.getProductName());
		System.out.println(entityProduct.getBasePrice());
		System.out.println(entityProduct.getOfferPrice());
		System.out.println(entityProduct.getOfferePercentage());
		System.out.println(entityProduct.getProductDetail());
		System.out.println(entityProduct.getProductImageURL1());
		System.out.println(entityProduct.getProductImageURL2());
		System.out.println(entityProduct.getProductImageURL3());
		System.out.println(entityProduct.getQuantity());
		System.out.println(entityProduct.getCreatedAt());
		
		entityProduct.setCreatedAt(LocalDate.now());
		productRepo.save(entityProduct);
		return"redirect:/product";
	}
	
	@GetMapping("listproduct")
	public String listProduct(Model model) {
		List<Object[]> productList = productRepo.getAll();
		
		model.addAttribute("allProductList", productList);
		
		return"ListProduct";
	}
	
	@GetMapping("viewproduct")
	public String viewProduct(Integer productId, Model model) {
		List<Object[]> op = productRepo.getByProductId(productId);
		model.addAttribute("product", op);
		return "ViewProduct";
	}
	
	@GetMapping("deleteproduct")
	public String deleteProduct(Integer productId) {
		productRepo.deleteById(productId);//delete from members where memberID = :memberId
		return "redirect:/listproduct";
	}
	
	@GetMapping("editproduct")
	public String editProduct(Integer productId,Model model) {
		Optional<ProductEntity> op = productRepo.findById(productId);
		if (op.isEmpty()) {
			return "redirect:/listproduct";
		} else {
			model.addAttribute("product",op.get());
			return "EditProduct";

		}
	}

	@PostMapping("updateproduct")
	public String updateProduct(ProductEntity productEntity) {//pcode vhreg type vid 
		
		System.out.println(productEntity.getProductId());//id? db?

		Optional<ProductEntity> op = productRepo.findById(productEntity.getProductId());
		System.out.println(productEntity.getBasePrice());
		
		if(op.isPresent())
		{
			ProductEntity dbProduct = op.get(); //pcode vhreg type id userId 
			dbProduct.setProductName(productEntity.getProductName());//type 
			dbProduct.setBasePrice(productEntity.getBasePrice());
			dbProduct.setOfferPrice(productEntity.getOfferPrice());
			dbProduct.setOfferePercentage(productEntity.getOfferePercentage());
			dbProduct.setProductDetail(productEntity.getProductDetail());
			dbProduct.setProductImageURL1(productEntity.getProductImageURL1());
			dbProduct.setProductImageURL2(productEntity.getProductImageURL2());
			dbProduct.setProductImageURL3(productEntity.getProductImageURL3());
			//
			productRepo.save(dbProduct);
		}
		return "redirect:/listproduct";
	}

}