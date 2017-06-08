package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ekartbackend.dao.CartDAO;
import com.niit.ekartbackend.dao.ProductDAO;
import com.niit.ekartbackend.dao.UserDAO;
import com.niit.ekartbackend.domain.Cart;
import com.niit.ekartbackend.domain.Product;
import com.niit.ekartbackend.domain.User;

@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	Cart cart;
	@Autowired
	Product product;

	@RequestMapping("/productdescriptionPage")
	public String productdescription(@RequestParam("productid") String Productid, Model model) {

		Product product = productDAO.get(Productid);

		model.addAttribute("isUserClickedMoreInfo", "true");
		model.addAttribute("product", product);
		return "userLogin";

	}

	@RequestMapping("mycart")
	public String mycart(Principal p, Model model) {
		List<Cart> cartList = cartDAO.getByEmailId(p.getName());
		model.addAttribute("cartList", cartList);

		model.addAttribute("isUserClickedAddtocart", true);

		return "userLogin";
	}

	@RequestMapping("addCart")
	public String addCart(@RequestParam("productid") String Productid, Principal p, Model model) {

		Product product = productDAO.get(Productid);
		User user = userDAO.getByEmailId(p.getName());
		Cart crt = cartDAO.getByUserandProduct(p.getName(), Productid);

		if (product.getQuantity() > 0) {

			if (cartDAO.itemAlreadyExist(p.getName(), Productid, true)) {
				int quantity = crt.getQuantity() + 1;
				crt.setQuantity(quantity);
				crt.setTotal(product.getPrice() * quantity);
				cartDAO.save(crt);
			} else {

				cart.setProductid(Productid);
				cart.setProductname(product.getProductname());
				cart.setEmail(p.getName());

				cart.setQuantity(1);
				cart.setPrice(product.getPrice());
				cart.setStatus('N');
				cart.setTotal(product.getPrice() * cart.getQuantity());
				cart.setId(user.getId());
				cart.setDays(1);

				cartDAO.save(cart);
			}
			int quantity = product.getQuantity() - 1;
			product.setQuantity(quantity);

			productDAO.saveOrUpdate(product);

			return "redirect:mycart";

		} else {
			model.addAttribute("product", product);
			model.addAttribute("message", "Out of stock");
			return "userLogin";
		}
	}

	@RequestMapping("removeCart")
	public String removeCart(@RequestParam("cartId") int cartId, Model model) {
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductid(cart.getProductid());
		int quantity = product.getQuantity() + cart.getQuantity();
		product.setQuantity(quantity);
		productDAO.save(product);
		cartDAO.delete(cartId);
		return "redirect:mycart";
	}

}