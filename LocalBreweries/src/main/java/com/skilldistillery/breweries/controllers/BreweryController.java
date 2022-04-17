package com.skilldistillery.breweries.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.breweries.data.BreweryDAO;
import com.skilldistillery.breweries.entities.Brewery;

@Controller
public class BreweryController {

	@Autowired
	private BreweryDAO dao;

	@RequestMapping(path = { "/", "home.do" })
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
	@RequestMapping(path = "add.do")
	public String addBrewery(Model model) {
		return "brewery/added";
	}
	
	@PostMapping("addBrewery.do")
	public String addingBrewery(Brewery brewery, Model model, RedirectAttributes redir) {
		Brewery newBrewery = dao.addBrewery(brewery);
		redir.addFlashAttribute("brewery", newBrewery);
		return "brewery/show";
	}
	
	@RequestMapping(path ="updateBrewery.do")
	public String updateBrewery(Integer id, String name, String city, String state, String url, Double latitude, Double longitude, RedirectAttributes redir) {
		
		
		Brewery brewery = dao.findById(id);
		brewery.setName(name);
		brewery.setCity(city);
		brewery.setState(state);
		brewery.setUrl(url);
		brewery.setLatitude(latitude);
		brewery.setLongitude(longitude);
		dao.updateBrewery(id, brewery);
		
		redir.addFlashAttribute("brewery", brewery);
		return null;
		
	}
	
}
