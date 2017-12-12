package com.coinchecker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {

	@RequestMapping(value = "/greeting")
	public String sayHello(Model model) {

		model.addAttribute("greeting", "Richard");

		// Return tie to JSP page
		return "dashboard";
	}


}
