package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CartEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.repository.CategoryRepository;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepository categoryRepo;

	@GetMapping("category")
	public String category() {
		return"Category";
	}
	
	@PostMapping("savecategory")
	public String savecategory(CategoryEntity entityCategory) {
		System.out.println(entityCategory.getCategoryName());
		categoryRepo.save(entityCategory);
		return"Category";
	}
	@GetMapping("listcategory")
	public String listCategory(Model model) {
		List<CategoryEntity> categoryList = categoryRepo.findAll();
		
		model.addAttribute("categoryList", categoryList);
		
		return"ListCategory";
	}
	
	@GetMapping("viewcategory")
	public String viewCategory(Integer categoryId,Model model) {
		System.out.println("id ===> " + categoryId);
		Optional<CategoryEntity> op = categoryRepo.findById(categoryId);
		if (!op.isPresent()) {
			// not found
		} else {
			// data found
			CategoryEntity category = op.get();
			// send data to jsp ->
			model.addAttribute("category", category);
		}

		return "ViewCategory";
	}
	
	@GetMapping("deletecategory")
	public String deleteCategory(Integer categoryId) {
		categoryRepo.deleteById(categoryId);//delete from members where memberID = :memberId
		return "redirect:/listcategory";
	}
	
	@GetMapping("editcategory")
	public String editCategory(Integer categoryId,Model model) {
		Optional<CategoryEntity> op = categoryRepo.findById(categoryId);
		if (!op.isPresent()) {
			return "redirect:/listcategory";
		} else {
			model.addAttribute("category",op.get());
			return "EditCategory";

		}
	}

	@PostMapping("updatecategory")
	public String updateCart(CategoryEntity categoryEntity) {//pcode vhreg type vid 
		
		System.out.println(categoryEntity.getCategoryId());//id? db? 

		Optional<CategoryEntity> op = categoryRepo.findById(categoryEntity.getCategoryId());
		
		if(op.isPresent())
		{
			CategoryEntity dbCategory = op.get(); //pcode vhreg type id userId 
			dbCategory.setCategoryName(categoryEntity.getCategoryName());//type 
			//
			categoryRepo.save(dbCategory);
		}
		return "redirect:/listcategory";
	}
}