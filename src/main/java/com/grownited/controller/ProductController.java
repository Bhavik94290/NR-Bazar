package com.grownited.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
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
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("product")
	public String product(Model model) {
		
		List<CategoryEntity> allCategory = categoryRepository.findAll();// all state
		model.addAttribute("allCategory",allCategory);
		
		List<SubCategoryEntity> allSubCategory = subCategoryRepository.findAll();// all state
		model.addAttribute("allSubCategory",allSubCategory);
		return"Product";
	}
	
	@PostMapping("saveproduct")
	public String saveproduct(ProductEntity productEntity,MultipartFile Image,MultipartFile Image2,MultipartFile Image3) {
	    
	    try {
	        // Upload productPic1
	        Map result1 = cloudinary.uploader().upload(Image.getBytes(), ObjectUtils.emptyMap());
	        productEntity.setProductImageURL1(result1.get("url").toString());

	        // Upload productPic2
	        Map result2 = cloudinary.uploader().upload(Image2.getBytes(), ObjectUtils.emptyMap());
	        productEntity.setProductImageURL2(result2.get("url").toString());

	        // Upload productPic3
	        Map result3 = cloudinary.uploader().upload(Image3.getBytes(), ObjectUtils.emptyMap());
	        productEntity.setProductImageURL3(result3.get("url").toString());

	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		productEntity.setCreatedAt(LocalDate.now());

		productRepo.save(productEntity);

	    return "redirect:/product";
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