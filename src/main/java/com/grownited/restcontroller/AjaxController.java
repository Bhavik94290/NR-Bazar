package com.grownited.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.grownited.entity.CityEntity;
import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.SubCategoryRepository;

@RestController
public class AjaxController {
	@Autowired
	SubCategoryRepository subCategoryRepository; 
	
	@Autowired
	CityRepository cityRepository;
	
	@GetMapping("/getallsubcategorybycategoryid/{categoryId}")
	public List<SubCategoryEntity> getAllSubCateByCatId(@PathVariable Integer categoryId) {
		System.out.println(categoryId);
		
		List<SubCategoryEntity> allSubCategory  =  subCategoryRepository.findByCategoryId(categoryId);
			
		
		return allSubCategory;
	}
    
	@GetMapping("/getallcitybystateid/{stateId}")
	public List<CityEntity> getAllCityByStateId(@PathVariable Integer stateId) {
		System.out.println(stateId);
		
		List<CityEntity> allcity  =  cityRepository.findByStateId(stateId);
			
		
		return allcity;
	}

}