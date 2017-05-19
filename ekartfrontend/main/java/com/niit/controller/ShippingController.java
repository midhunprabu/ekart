package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ekartbackend.dao.ShippingDAO;
import com.niit.ekartbackend.domain.Shipping;

@Controller
public class ShippingController {

	@Autowired
	private ShippingDAO shippingDAO;
	
	@RequestMapping("newShipping")
	public String newUser(@ModelAttribute Shipping shipping, Model model){
		shippingDAO.save(shipping);
		return "Login";
	}
	
}
