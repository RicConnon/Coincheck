package com.coinchecker.controller;

import java.io.IOException;
import java.util.Scanner;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coinchecker.service.JsonReader;

@Controller
public class Test {

	@RequestMapping(value = "/greeting")
	public String sayHello(Model model) {

		Scanner scanner = new Scanner(System.in);

		System.out.println("Enter name:");

		String name = scanner.nextLine();

		model.addAttribute("greeting", name);

		// Return tie to JSP page
		return "dashboard";
	}

	@RequestMapping(value = "/coins")
	public String sampleApi(Model model) throws JSONException, IOException {

		JSONObject json = JsonReader.readJsonFromUrl("https://api.coinmarketcap.com/v1/ticker/?limit=1");

		System.out.println(json);
		
		return "dashboard";
	}

}
