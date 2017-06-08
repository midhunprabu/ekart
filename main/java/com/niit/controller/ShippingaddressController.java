package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ekartbackend.dao.CartDAO;
import com.niit.ekartbackend.dao.ShippingaddressDAO;
import com.niit.ekartbackend.dao.UserDAO;
import com.niit.ekartbackend.domain.Cart;
import com.niit.ekartbackend.domain.Shippingaddress;
import com.niit.ekartbackend.domain.User;

@Controller
public class ShippingaddressController {
	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO CartDAO;
	
	@Autowired
	private Cart cart;
	
	@RequestMapping("shippingaddressPage")
	public ModelAndView newShippingaddress(){
		
		ModelAndView mv = new ModelAndView("userLogin");
		mv.addObject("newShippingaddressClicked", "true");
		return mv;
	}
	@RequestMapping("proceed")
	public String Proceed(Principal p, Model model){
		String email = 	p.getName();
		List<Shippingaddress> shippingaddressList = shippingaddressDAO.list(email);
		model.addAttribute("shippingList", shippingaddressList);
		model.addAttribute("isUserClickedShippingAddress", true);
	 return "userLogin";
	}
	@RequestMapping("addShippingaddress")
	public String addShippingaddress(Principal p, @ModelAttribute Shippingaddress shippingaddress){
		User user = userDAO.getByEmailId(p.getName());
		/*shippingaddress.setUserId(user.getUserId());
		shippingaddress.setEmailId(email);
		*/
		
		shippingaddress.setEmail(p.getName());
		shippingaddress.setEmail(user.getEmail());
		
		
		
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
		
	}
	@RequestMapping("shippingAddress")
	public String shippingAddress(@RequestParam("shippingId") String sid, Principal p, Model model){
		
		String email = p.getName();
		
		model.addAttribute("thankyouPage", true);
		
		List<Cart> CartList = CartDAO.getByEmailId(email);
		
		for(Cart c : CartList){
			c.setId(sid);
			CartDAO.saveOrUpdate(c);
		}
		
		return "userLogin";
		
	}
	@RequestMapping("deleteshippingAddress")
	public String deleteshippingAddress(@RequestParam("shippingId") int sid, Model model){
		shippingaddressDAO.delete(sid);
		return "redirect:proceed";
		
	}
	@RequestMapping("editshippingAddress")
	public String editshippingAddress(@RequestParam("shippingId")int sid,Model model){
	Shippingaddress shippingaddress=shippingaddressDAO.getBySid(sid);
		model.addAttribute("shippingaddress", shippingaddress);
		model.addAttribute("editShippingAddressClicked", true);
		return "userLogin";
		
	}
	@RequestMapping("aftereditshippingAddress")
	public String editShippingAddress(Principal p, @ModelAttribute Shippingaddress shippingaddress, Model model){
		
		String email = p.getName();
		User user = userDAO.getByEmailId(email);
		
		shippingaddress.setEmail(email);
		shippingaddress.setName(user.getEmail());
		
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
	}
	
	@ModelAttribute
	public void commonToUser(Model model){
		model.addAttribute("isUser", "true");
	}
}
