package com.skilldistillery.breweries.data;

import java.util.List;

import com.skilldistillery.breweries.entities.Brewery;

public interface BreweryDAO {
	Brewery findById(int breweryId);
	List<Brewery> findAll();
}
