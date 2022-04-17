package com.skilldistillery.breweries.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.breweries.data.BreweryDAO;
import com.skilldistillery.breweries.entities.Brewery;

@Controller
public class BreweryController {
	
	@Autowired
	private BreweryDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		List<Brewery> brewery = dao.findAll();
		model.addAttribute("brewery", brewery);
		return "home";
	}
	@RequestMapping(path = "getBrewery.do")
	public String showBrewery(Integer Id, Model model) {
		Brewery brewery = dao.findById(Id);
		model.addAttribute("brewery", brewery);
		return "brewery/show";
	}
	@RequestMapping(path ="/addBrewery.do")
	public String addBrewery(Model model) {
		model.addAttribute("brewery", new Brewery());
		return "brewery/added";
	}
}
