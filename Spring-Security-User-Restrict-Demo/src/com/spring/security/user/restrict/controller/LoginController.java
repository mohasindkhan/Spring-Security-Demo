package com.spring.security.user.restrict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController 
{
	
	// LOGIN PAGE
	@GetMapping("/showLoginForm")
	public String showLoginForm()
	{
		return "Login-Page";
	}
	
	
	
	// ACCESS DENIED PAGE
	@GetMapping("/access-denied")
	public String showAccessDeniedPage()
	{
		return "AccessDenied-Page";
	}
	

}
