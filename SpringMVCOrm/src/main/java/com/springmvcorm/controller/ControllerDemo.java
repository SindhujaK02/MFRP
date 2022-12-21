package com.springmvcorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvcorm.model.User;
import com.springmvcorm.services.UserService;

@Controller
public class ControllerDemo {

	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/registrationPage")
	public String showRegistrationPage() {
		return "regpag";
	}
	
	@RequestMapping(value = "/registerUser",method = RequestMethod.POST)
	public String regUser(@ModelAttribute("user") User user,ModelMap modelMap) {
		int create = userService.create(user);
		modelMap.addAttribute("result", "User created with id "+create);
		return "regpag";
	}
	
	@RequestMapping("/listUsers")
	public String getUsers(ModelMap modelMap) {
		List<User> userList = userService.userList();
		modelMap.addAttribute("users", userList);
		return "userList";
	}
}
