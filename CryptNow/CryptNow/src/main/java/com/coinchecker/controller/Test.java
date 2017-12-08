package com.coinchecker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test {

	@RequestMapping(value ="/greeting")
	public String sayHello(Model model){

		model.addAttribute("greeting", "Hello World");
		
		//Return tie to JSP page
		return "helloWorld";
	}
	
}
