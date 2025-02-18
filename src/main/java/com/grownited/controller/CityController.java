package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CityEntity;
import com.grownited.repository.CityRepository;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class CityController {
	
	@Autowired
	CityRepository repositoryCity;
	
	
	@GetMapping("newcity")
	public String newCity() {
		return "City";
	}
	
    @PostMapping("savecity")
    public String saveCity(CityEntity entityCity) {
        //read:
    	
    	
    	
    	System.out.println(entityCity.getCityId());
    	System.out.println(entityCity.getCityName());
        System.out.println(entityCity.getStateId());
        return "City";
    }
    
}
