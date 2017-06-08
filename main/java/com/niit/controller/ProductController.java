package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.ekartbackend.dao.CategoryDAO;
import com.niit.ekartbackend.dao.ProductDAO;
import com.niit.ekartbackend.dao.SupplierDAO;
import com.niit.ekartbackend.domain.Category;
import com.niit.ekartbackend.domain.Product;
import com.niit.ekartbackend.domain.Supplier;
import com.niit.util.FileUtil;

@Controller
public class ProductController {
  
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("newProduct")
	
	public String newProduct(@ModelAttribute Product product, @RequestParam("image") MultipartFile file, Model model) {
		
		
		String path = "D://New folder/ekartfrontend/src/main/webapp/WEB-INF/resources/images/product/";
		
		//productDAO.saveorupdate(product);
		
				boolean flag = productDAO.saveOrUpdate(product);
				
				FileUtil.upload(path, file, product.getProductid()+ ".jpg");

		model.addAttribute("isUserClickedview_product", "true");
		System.out.println(flag);
		return "redirect:/viewproductPage";

	}
	     
	
	
	@RequestMapping("editProduct")
	public String editProduct(@RequestParam(value = "productid") String productid, Model model) {

		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList",categoryList);
		
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList",supplierList);
		
		Product product = productDAO.get(productid);
		model.addAttribute("product", product);
		model.addAttribute("isUserClickedEdit1", "true");
		return "adminLogin";

	}

@RequestMapping("aftereditproduct")
	public String aftereditproduct(@ModelAttribute Product product, Model model){
		productDAO.saveOrUpdate(product);
		
		return "redirect:/viewproductPage";
		
	}
	
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam(value = "productid") String productid) {
		
		productDAO.delete(productid);
		
		return "redirect:/viewproductPage";

	}

	
	@RequestMapping("/ProductPage")
	public String productPage(Model model)
	{
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList",categoryList);
		
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList",supplierList);
		
		model.addAttribute("isUserClickedadd_product", "true");
		
		return "adminLogin";
	}
	@RequestMapping("viewproductPage")
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
