package com.wxt.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wxt.service.impl.UserService;

@Controller
@RequestMapping("/wxt")
public class UserContorller {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/getAllUser")
	public String getAllUser(Model model){
		if(userService.getAllUser()!=null){
			model.addAttribute("users", userService.getAllUser());
		}else{
			System.err.println("该表为空表！！");
		}
		return "/index";
	}
	
}
