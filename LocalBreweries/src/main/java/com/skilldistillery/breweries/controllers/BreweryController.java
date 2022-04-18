package com.skilldistillery.breweries.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping("search.do")
	public String searchBrewery() {
		return "brewery/search";
	}
	
	@RequestMapping("getBrewery.do")
	public String showBrewery(Integer Id, Model model) {
		Brewery brewery = dao.findById(Id);
		model.addAttribute("brewery", brewery);
		return "brewery/show";
	}

	@RequestMapping("add.do")
	public String addBrewery() {
		return "brewery/added";
	}

	@PostMapping("addBrewery.do")
	public String addingBrewery(Brewery brewery, Model model, RedirectAttributes redir) {
		Brewery newBrewery = dao.addBrewery(brewery);
		redir.addFlashAttribute("brewery", newBrewery);
		return "brewery/show";
	}

	@RequestMapping("update.do")
	public String goToUpdatePage() {
		return "brewery/update";

	}

	@PostMapping("updateBrewery.do")
	public String updateBrewery(@RequestParam("id") Integer Id, Brewery brewery, Model model,
			RedirectAttributes redir) {
		Brewery updateBrewery = dao.updateBrewery(Id, brewery);
		redir.addFlashAttribute("brewery", updateBrewery);
		return "brewery/show";
	}

	@RequestMapping("updated.do")
	public String foundBreweryToUpdate(Integer id, Model model) {
		Brewery brewery = dao.findById(id);
		model.addAttribute("brewery", brewery);
		return "brewery/updated";
	}

	@RequestMapping("delete.do")
	public String goToDeletePage() {
		return "brewery/delete";
	}

	@PostMapping("deleted.do")
	public String foundBreweryToDelete(Integer id, Model model, RedirectAttributes redir) {
		Brewery brewery = dao.findById(id);
		dao.deleteBrewery(id);
		redir.addFlashAttribute("brewery", brewery);
		return "redirect:deletedBrewery.do";
	}

	@RequestMapping("deletedBrewery.do")
	public String showDeletedBrewery(Brewery brewery, Model model) {
		model.addAttribute("brewery", brewery);
		return "brewery/deleted";
	}

}
