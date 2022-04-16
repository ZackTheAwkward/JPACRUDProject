package com.skilldistillery.breweries.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.breweries.data.BreweryDAO;

@Controller
public class BreweryController {
	
	@Autowired
	private BreweryDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		//TODO change debug
		model.addAttribute("DEBUG", dao.findById(1));
		return "home";
	}
	
	
}
