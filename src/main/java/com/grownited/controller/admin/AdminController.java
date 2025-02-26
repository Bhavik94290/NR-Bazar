package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

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
	
	@GetMapping("viewadmin")
	public String viewAdmin(Integer adminId, Model model) {
		// ?
		System.out.println("id ===> " + adminId);
		Optional<AdminEntity> op = repositoryAdmin.findById(adminId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			AdminEntity admin = op.get();
			// send data to jsp ->
			model.addAttribute("admin", admin);

		}

		return "ViewAdmin";
	}
	
	@GetMapping("deleteadmin")
	public String deleteadmin(Integer adminId) {
		repositoryAdmin.deleteById(adminId);//delete from members where memberID = :memberId
		return "redirect:/listadmin";
	}
	
	
}
