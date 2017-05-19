package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ekartbackend.dao.SupplierDAO;
import com.niit.ekartbackend.domain.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("newSupplier")
	public String newUser(@ModelAttribute Supplier supplier, Model model) {
		supplierDAO.save(supplier);
		return "Login";
	}

	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam(value = "supplierId") String id) {

		supplierDAO.delete(id);

		return "redirect:/viewsupplierPage";

	}

	@RequestMapping("/SupplierPage")
	public String supplierPage(Model model) {
		model.addAttribute("isUserClickedadd_supplier", "true");

		return "adminLogin";
	}

	@RequestMapping("/viewsupplierPage")
	public String viewsupplierPage(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedview_supplier", "true");

		return "adminLogin";
	}

	@ModelAttribute
	public void adminSupplier(Model model) {
		model.addAttribute("isAdmin", "true");
	}
}
