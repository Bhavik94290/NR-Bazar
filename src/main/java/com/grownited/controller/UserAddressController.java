package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CartEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.UserAddressEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;
import com.grownited.repository.UserAddressRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserAddressController {
	
	@Autowired
	CityRepository cityRepository;
	
	@Autowired
	StateRepository stateRepository;
	
	@Autowired
	UserAddressRepository userAddressRepo;

	@GetMapping("useraddress")
	public String userAddress(Model model) {
		
		List<CityEntity> allCity = cityRepository.findAll();// all state
		model.addAttribute("allCity",allCity);
		
		List<StateEntity> allState = stateRepository.findAll();// all state
		model.addAttribute("allState",allState);
		return"UserAddress";
	}
	
	@PostMapping("saveaddress")
	public String saveAddress(UserAddressEntity entityUserAddress, HttpSession session) {
		//System.out.println(entityUserAddress.getTitelName());
		//System.out.println(entityUserAddress.getUnitName());
		//System.out.println(entityUserAddress.getStreetName());
		//System.out.println(entityUserAddress.getLandMarkName());
		//System.out.println(entityUserAddress.getZipCode());
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityUserAddress.setUserId(userId);
		
		userAddressRepo.save(entityUserAddress);
		return"UserAddress";
	}
	
	@GetMapping("listuseraddress")
	public String listUserAddress(Model model) {
		List<Object[]> userAddressList = userAddressRepo.getAll();		
		model.addAttribute("allUserAddressList",userAddressList );		
		return"ListUserAddress";
	}
	
	@GetMapping("viewuseraddress")
	public String viewUserAddress(Integer userAddressId, Model model) {
		List<Object[]> op = userAddressRepo.getByUserAddressId(userAddressId);
		model.addAttribute("userAddress", op);
		return "ViewUserAddress";
	}
	
	@GetMapping("deleteuseraddress")
	public String deleteUserAddress(Integer userAddressId) {
		userAddressRepo.deleteById(userAddressId);//delete from members where memberID = :memberId
		return "redirect:/listuseraddress";
	}
	
	@GetMapping("edituseraddress")
	public String editUserAddress(Integer userAddressId,Model model) {
		Optional<UserAddressEntity> op = userAddressRepo.findById(userAddressId);
		if (op.isEmpty()) {
			return "redirect:/listuseraddress";
		} else {
			model.addAttribute("userAddress",op.get());
			return "EditUserAddress";

		}
	}

	@PostMapping("updateuseraddress")
	public String updateUserAddress(UserAddressEntity userAddressEntity) {//pcode vhreg type vid 
		
		System.out.println(userAddressEntity.getUserAddressId());//id? db? 

		Optional<UserAddressEntity> op = userAddressRepo.findById(userAddressEntity.getUserAddressId());
		
		if(op.isPresent())
		{
			UserAddressEntity dbUserAddress = op.get(); //pcode vhreg type id userId 
			dbUserAddress.setTitelName(userAddressEntity.getTitelName());//type
			dbUserAddress.setUnitName(userAddressEntity.getUnitName());//type 
			dbUserAddress.setStreetName(userAddressEntity.getStreetName());//type 
			dbUserAddress.setLandMarkName(userAddressEntity.getLandMarkName());//type 
			dbUserAddress.setZipCode(userAddressEntity.getZipCode());//type

			//
			userAddressRepo.save(dbUserAddress);
		}
		return "redirect:/listuseraddress";
	}
}