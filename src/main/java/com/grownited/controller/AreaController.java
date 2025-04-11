package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.repository.AreaRepository;

@Controller
public class AreaController {
	
	@Autowired
	AreaRepository areaRepo;
	
	@GetMapping("area")
	public String Area() {
		return"Area";
	}
	
	@PostMapping("savearea")
	public String saveArea(AreaEntity entityArea) {
		System.out.println(entityArea.getAreaName());
		areaRepo.save(entityArea);
		return"Area";
	}
	
	@GetMapping("listarea")
	public String listArea(Model model) {
		List<AreaEntity> areaList = areaRepo.findAll();
		
		model.addAttribute("areaList", areaList);
		
		return"ListArea";
	}
	
	@GetMapping("viewarea")
	public String viewArea(Integer areaId,Model model) {
		System.out.println("id ===> " + areaId);
		Optional<AreaEntity> op = areaRepo.findById(areaId);
		if (!op.isPresent()) {
			// not found
		} else {
			// data found
			AreaEntity area = op.get();
			// send data to jsp ->
			model.addAttribute("area", area);
		}

		return "ViewArea";
	}
	
	@GetMapping("deletearea")
	public String deleteArea(Integer areaId) {
		areaRepo.deleteById(areaId);//delete from members where memberID = :memberId
		return "redirect:/listarea";
	}
	
	@GetMapping("editarea")
	public String editArea(Integer areaId,Model model) {
		Optional<AreaEntity> op = areaRepo.findById(areaId);
		if (!op.isPresent()) {
			return "redirect:/listvehicle";
		} else {
			model.addAttribute("area",op.get());
			return "EditArea";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatearea")
	public String updateArea(AreaEntity areaEntity) {//pcode vhreg type vid 
		
		System.out.println(areaEntity.getAreaId());//id? db? 

		Optional<AreaEntity> op = areaRepo.findById(areaEntity.getAreaId());
		
		if(op.isPresent())
		{
			AreaEntity dbArea = op.get(); //pcode vhreg type id userId 
			dbArea.setAreaName(areaEntity.getAreaName());//code 
		
			areaRepo.save(dbArea);
		}
		return "redirect:/listvehicle";
	}


}