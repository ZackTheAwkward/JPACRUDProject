package com.skilldistillery.breweries.data;

import com.skilldistillery.breweries.entities.Brewery;

public interface BreweryDAO {
	Brewery findById(int breweryId);
}
