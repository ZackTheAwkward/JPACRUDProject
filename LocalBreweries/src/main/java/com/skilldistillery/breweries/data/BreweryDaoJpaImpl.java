package com.skilldistillery.breweries.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.breweries.entities.Brewery;

@Service
@Transactional
public class BreweryDaoJpaImpl implements BreweryDAO {
	
	
	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Brewery findById(int breweryId) {
		return em.find(Brewery.class, breweryId);
	}

}
