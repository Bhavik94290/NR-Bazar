package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {
	
	//input 
	//process 
	@Autowired
	StateRepository repoState;
	
	@GetMapping("newstate")
	public String newState() {
		return "NewState";
	}
	
	@PostMapping("savestate")
	public String saveState(StateEntity stateEntity)
	{
//		System.out.println(stateEntity.getStateName());
		repoState.save(stateEntity);
		return "NewState";
	}
	
	@GetMapping("liststate")
	public String listState(Model model) {

		List<StateEntity> allState = repoState.findAll();
		
		model.addAttribute("allState", allState);
		return "ListState";
	}	
	
	@GetMapping("viewstate")
	public String viewState(Integer stateId, Model model) {
		
		Optional<StateEntity> op = repoState.findById(stateId);
		
		if (!op.isPresent()) {
			// data not found
		}
		else {
			// data found
			StateEntity state =  op.get();
			
			model.addAttribute("state", state);
		}
		return "ViewState";
	}
	
	@GetMapping("deletestate")
	public String deleteState(Integer stateId) {
		
		repoState.deleteById(stateId);
		
		return "redirect:/liststate";
	}
	
	@GetMapping("editstate")
	public String editState(Integer stateId, Model model) {
		
		Optional<StateEntity> op = repoState.findById(stateId);
		
		if (!op.isPresent()) {
			return "redirect:/liststate";
		}
		else {
			StateEntity state = op.get();
			
			model.addAttribute("state", state);
			return "EditState";
		}
		
	}
	
	@PostMapping("updatestate")
	public String updateState(StateEntity stateEntity) {
		
		Optional<StateEntity> op = repoState.findById(stateEntity.getStateId());
		
		if (op.isPresent()) {
			
			StateEntity dbState = op.get();
			
			dbState.setStateName(stateEntity.getStateName());
			dbState.setStateId(stateEntity.getStateId());
			
			repoState.save(dbState);
			
			
		}
		return "redirect:/liststate";
	}
	
	
	
}