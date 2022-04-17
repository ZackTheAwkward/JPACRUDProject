package com.skilldistillery.breweries.data;

import java.util.List;

import com.skilldistillery.breweries.entities.Brewery;

public interface BreweryDAO {
	public Brewery findById(int breweryId);
	public List<Brewery> findAll();
	public Brewery addBrewery(Brewery brewery);
	public Brewery updateBrewery(int id, Brewery brewery);
	public boolean deleteBrewery(int id);
	
}
