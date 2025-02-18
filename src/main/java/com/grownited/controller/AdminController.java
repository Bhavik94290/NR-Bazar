package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AdminEntity;
import com.grownited.repository.AdminRepository;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository repositoryAdmin;

	
	@GetMapping("newadmin")
	public String newAdmin() {
		return "NewAdmin";
	}
	
	@PostMapping("saveadmin")
	public String saveAdmin(AdminEntity entityAdmin) {
		repositoryAdmin.save(entityAdmin);
		return "NewAdmin";
	}
	
	
	@GetMapping("listadmin")
	public String listMember(Model model) {
		List<AdminEntity> adminList = repositoryAdmin.findAll();// select * from admin; //500 -> MemberEntity
		
		//how to send data from controller to jsp 
		//Model 
		model.addAttribute("adminList", adminList);
						//dataName , dataValue 
		
		return "ListAdmin";
	}
}
