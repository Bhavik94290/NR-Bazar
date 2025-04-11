package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.CityDto;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;

@Controller
public class CityController {

	@Autowired
	StateRepository repositoryState;

	@Autowired
	CityRepository repositoryCity;

	@GetMapping("newcity")
	public String newCity(Model model) {
		// select * from state;
		List<StateEntity> allState = repositoryState.findAll();// all state

		model.addAttribute("allState", allState);
		return "NewCity";
	}

	@PostMapping("savecity")
	public String saveCity(CityEntity entityCity) {
		repositoryCity.save(entityCity);
		return "redirect:/newcity";
	}

	@GetMapping("listcity")
	public String listCity(Model model) {
//		List<CityDto> allCity = repositoryCity.getAll();
		List<Object[]> allCity = repositoryCity.getAll();
		
		model.addAttribute("allCity", allCity);
		return "ListCity";
	}	
	
	@GetMapping("viewcity")
	public String viewCity(Integer cityId, Model model) {
		
		Object[] city = repositoryCity.getByCityId(cityId);
		
		model.addAttribute("city", city);
		return "ViewCity";
	}
	
	@GetMapping("deletecity")
	public String deleteCity(Integer cityId) {
		
		repositoryCity.deleteById(cityId);
		
		return "redirect:/listcity";
	}
	
	@GetMapping("editcity")
	public String editCity(Integer cityId, Model model) {
		
		List<StateEntity> editState = repositoryState.findAll();
		
		model.addAttribute("editState", editState);
		
		Optional<CityEntity> op = repositoryCity.findById(cityId);
		
		if (!op.isPresent()) {
			return "redirect:/listcity";
		}
		else {
			CityEntity city = op.get();
			
			model.addAttribute("city", city);
			return "EditCity";
		}
		
	}
	
	
	@PostMapping("updatecity")
	public String updateCity(CityEntity cityEntity) {
		
		Optional<CityEntity> op = repositoryCity.findById(cityEntity.getCityId());
		
		if (op.isPresent()) {
			
			CityEntity dbCity = op.get();
			
			dbCity.setCityName(cityEntity.getCityName());
			dbCity.setStateId(cityEntity.getStateId());
			
			repositoryCity.save(dbCity);
			
			
		}
		return "redirect:/listcity";
	}
	

}