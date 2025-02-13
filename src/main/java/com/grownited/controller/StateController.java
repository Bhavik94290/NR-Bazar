package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class StateController {
	
	
	@Autowired
	StateRepository repoState;
	
	
	@GetMapping("newstate")
	public String newState() {
		return "NewState";
	}
	
	
    @PostMapping("savestate")
    public String saveState(StateEntity stateEntity) {
        //TODO: process POST request
    	System.out.println(stateEntity.getState());
    	repoState.save(stateEntity);
        return "NewState";
    }
    
}
