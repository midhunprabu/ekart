package com.niit.controller;


import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ekartbackend.dao.RoleDAO;
import com.niit.ekartbackend.dao.UserDAO;
import com.niit.ekartbackend.domain.Role;
import com.niit.ekartbackend.domain.User;

@Controller
public class UserController {

	@Autowired UserDAO userDAO;
	@Autowired User user;
	@Autowired Role role;
	@Autowired RoleDAO roleDAO;
	

	
	@RequestMapping("newUser")
	public String newUser(@ModelAttribute User user, Model model){
		
		user.setEnabled(true);
		role.setName(user.getName());
		role.setEmail(user.getEmail());
		role.setRole("ROLE_USER");
		
		
		user.setRole(role);
		role.setUser(user);
		
		userDAO.save(user);
		roleDAO.save(role);
		model.addAttribute("isUserClickedSign Up","true");
		return "Login";
	}
	
	@RequestMapping("afterlogin")
	public String afterlogin(Principal p, Model model){
	
		String page;
	//	User user = userDAO.getByEmailId( p.getName());
		
		Role role = roleDAO.getByEmailId(p.getName());
		String r = role.getRole();
		System.out.println(r);
		if(r.equals("ROLE_USER")){  
			model.addAttribute("isUser","true");
			page = "userLogin";
		}
		else  {
			model.addAttribute("isAdmin","true");
			page = "adminLogin";
		}
		return page;
		
	}
	 
	
}
