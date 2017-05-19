package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ekartbackend.dao.CategoryDAO;
import com.niit.ekartbackend.domain.Category;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("newCategory")
	public String newUser(@ModelAttribute Category category, Model model){
		categoryDAO.save(category);
		return "Login";
	}
	

@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam(value = "categoryId") String id) {
		
		categoryDAO.delete(id);
		
		return "redirect:/viewcategoryPage";

	}
	
	@RequestMapping("/viewcategoryPage")
	public String viewcategoryPage(Model model)
	{
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("isUserClickedview_category", "true");
		
		return "adminLogin";
	}
	@RequestMapping("/CategoryPage")
	public String categoryPage(Model model)
	{
		model.addAttribute("isUserClickedadd_category", "true");
		
		return "adminLogin";
	}
	@ModelAttribute
	public void adminCategory(Model model){
		model.addAttribute("isAdmin", "true");
	}
}
