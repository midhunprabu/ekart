package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ekartbackend.dao.ProductDAO;
import com.niit.ekartbackend.domain.Product;

@Controller
public class HomeController {
	
	//http://localhost:8080/ShoppingCart/
	@Autowired ProductDAO productDAO; 
	@RequestMapping("/")
	public  String    goToHome(Model model)
	
	{
		List<Product> productList = productDAO.list();
		model.addAttribute("productList",productList);
		model.addAttribute("message", "Thank you for visiting Shopping Cart");
		return "Home";
	}
	
	
	
	@RequestMapping("/LoginPage")
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
	
		return "Home";
	}
	
	@RequestMapping("/RegistrationPage")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedRegister", "true");
		
		return "Home";
	}

	@RequestMapping("/mendigiPage")
	public String mendigiPage(Model model)
	{
		model.addAttribute("isUserClickedDigital", "true");
		
		return "Home";
	}

	@RequestMapping("/menanalogPage")
	public String menanalogPage(Model model)
	{
		model.addAttribute("isUserClickedAnalog", "true");
		
		return "Home";
	}

	@RequestMapping("/colordialPage")
	public String colordialPage(Model model)
	{
		model.addAttribute("isUserClickedcolordials", "true");
		
		return "Home";
	}

	@RequestMapping("/sportyPage")
	public String sportyPage(Model model)
	{
		model.addAttribute("isUserClickedsporty", "true");
		
		return "Home";
	}
	
	@RequestMapping("categories")
	public String categories(@RequestParam(value = "categoryName") String categoryName, Model model)
	{
		System.out.println(categoryName);
		List<Product> productList = productDAO.list(categoryName);
		model.addAttribute("productList",productList);
		
		
		model.addAttribute("isUserClickedExplore", "true");
		
		return "Home";
	}


	@RequestMapping("/HomePage")
	public String homePage(Model model)
	{
		List<Product> productList = productDAO.list();
		model.addAttribute("productList",productList);
		model.addAttribute("isUserClickedHome", "true");
		
		return "Home";
	}
	
}

