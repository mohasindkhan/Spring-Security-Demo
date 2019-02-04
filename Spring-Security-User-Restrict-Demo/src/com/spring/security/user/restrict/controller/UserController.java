package com.spring.security.user.restrict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController 
{
	
	// HOME PAGE
	@GetMapping("/")
	public String showHomePage()
	{
		return "Home-Page";
	}
	
	
	// MANAGERS PAGE
	@GetMapping("/employees")
	public String showEmployeesPage()
	{
		return "Employees-Page";
	}
	
	
	// MANAGERS PAGE
	@GetMapping("/managers")
	public String showManagersPage()
	{
		return "Managers-Page";
	}

	
	// CEOS PAGE
	@GetMapping("/ceos")
	public String showCEOSPage()
	{
		return "CEO-Page";
	}
	
}
