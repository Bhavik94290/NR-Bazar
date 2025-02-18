package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AreaController {

	
	@GetMapping("newarea")
	public String newArea() {
		return "NewArea";
	}
	
	
    @PostMapping("savearea")
    public String saveArea() {
        return "NewCity";
    }
}