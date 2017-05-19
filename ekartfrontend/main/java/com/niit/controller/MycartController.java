package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ekartbackend.dao.MycartDAO;
import com.niit.ekartbackend.domain.Mycart;

@Controller
public class MycartController {

	@Autowired
	private MycartDAO mycartDAO;
	
	@RequestMapping("newMycart")
	public String newUser(@ModelAttribute Mycart mycart, Model model){
		mycartDAO.save(mycart);
		return "Login";
	}
	@RequestMapping("/cartPage")
	public String cartPage(Model model)
	{
		model.addAttribute("isUserClickedCart", "true");
	
		return "Home";
	}
}
