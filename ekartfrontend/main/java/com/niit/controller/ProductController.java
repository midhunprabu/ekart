package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ekartbackend.dao.ProductDAO;
import com.niit.ekartbackend.domain.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("newProduct")
	public String newUser(@ModelAttribute Product product, Model model){
		productDAO.save(product);
		return "Login";
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam(value = "productId") String id) {
		
		productDAO.delete(id);
		
		return "redirect:/viewproductPage";

	}
	
	@RequestMapping("/ProductPage")
	public String productPage(Model model)
	{
		model.addAttribute("isUserClickedadd_product", "true");
		
		return "adminLogin";
	}
	@RequestMapping("/viewproductPage")
	public String viewproductPage(Model model)
	{
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("isUserClickedview_product", "true");
		
		return "adminLogin";
	}
	@ModelAttribute
	public void adminProduct(Model model){
		model.addAttribute("isAdmin", "true");
	}
}
