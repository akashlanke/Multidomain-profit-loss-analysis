package com.commercial.controller;

import com.commercial.entity.User;
import com.commercial.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		StringTrimmerEditor trimmer = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, trimmer);
	}

	@RequestMapping("/login")
	public String addCustomerPage(Model model, @RequestParam("username") String uname,
			@RequestParam("password") String pass) {

		User user = loginService.validateUser(uname, pass);
		model.addAttribute("USER_P", uname);
		if (user == null) {
			model.addAttribute("USER_P", "UserName and Password not match");
			return "login-user-failed";
		} else {
			return "create-user-success";
		}
	}

	@RequestMapping("/loginAgain")
	public String loginAgain(Model model) {
		return "index";
	}

	@RequestMapping("/create")
	public String createUser(Model model) {
		return "create-user-form";
	}

	@RequestMapping("/createUser")
	public String createNewUser(Model model, @RequestParam("username1") String uname1,
			@RequestParam("password1") String pass1) {
		User user = new User();
		user.setUname(uname1.toUpperCase());
		user.setPassword(pass1);

		boolean response = loginService.addUser(user);
		model.addAttribute("USER_P", uname1);
		if (response) {
			return "create-user-success";
		} else {
			String msg = "Username " + uname1 + " is already present, Please login with other username";
			model.addAttribute("USER_P", msg);

			return "create-user-failed";

		}

	}

}
