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
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubCategoryRepository;

@Controller
public class SubCategoryController {
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	SubCategoryRepository subCategoryRepo;

	@GetMapping("subcategory")
	public String subCategory(Model model) {
		
		List<CategoryEntity> allCategory = categoryRepository.findAll();// all state
		model.addAttribute("allCategory",allCategory);
	
		return"SubCategory";
	}
	
	@PostMapping("savesubcategory")
	public String saveSubCategory(SubCategoryEntity entitySubCategory) {
		System.out.println(entitySubCategory.getSubCategoryName());
		subCategoryRepo.save(entitySubCategory);
		return"SubCategory";
	}
	@GetMapping("listsubcategory")
	public String listSubCategory(Model model) {
		List<Object[]> subCategoryList = subCategoryRepo.getAll();
		model.addAttribute("allSubCategoryList",subCategoryList);
		return"ListSubCategory";
	}
	
	@GetMapping("viewsubCategory")
	public String viewSubCategory(Integer subCategoryId, Model model) {
		List<Object[]> op = subCategoryRepo.getBySubCategoryId(subCategoryId);
		model.addAttribute("subCategory", op);
		return "ViewSubCategory";
	}
	
	@GetMapping("deletesubCategory")
	public String deletesubCategory(Integer subCategoryId) {
		subCategoryRepo.deleteById(subCategoryId);//delete from members where memberID = :memberId
		return "redirect:/listsubcategory";
	}
	
	@GetMapping("editsubCategory")
	public String editSubCategory(Integer subCategoryId,Model model) {
		Optional<SubCategoryEntity> op = subCategoryRepo.findById(subCategoryId);
		if (!op.isPresent()) {
			return "redirect:/listsubcategory";
		} else {
			model.addAttribute("subCategory",op.get());
			return "EditSubCategory";

		}
	}

	@PostMapping("updatesubcategory")
	public String updateSubCategory(SubCategoryEntity subCategoryEntity) {//pcode vhreg type vid 
		
		System.out.println(subCategoryEntity.getSubCategoryId());//id? db? 

		Optional<SubCategoryEntity> op = subCategoryRepo.findById(subCategoryEntity.getSubCategoryId());
		
		if(op.isPresent())
		{
			SubCategoryEntity dbSubCategory = op.get(); //pcode vhreg type id userId 
			dbSubCategory.setSubCategoryName(subCategoryEntity.getSubCategoryName());//type 
			//
			subCategoryRepo.save(dbSubCategory);
		}
		return "redirect:/listsubcategory";
	}
}