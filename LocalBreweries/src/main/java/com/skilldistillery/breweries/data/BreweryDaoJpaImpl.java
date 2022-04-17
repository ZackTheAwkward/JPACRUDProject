package com.skilldistillery.breweries.data;

import java.util.List;

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

	@Override
	public List<Brewery> findAll() {
		String jpql = "SELECT b FROM Brewery b";
		return em.createQuery(jpql, Brewery.class).getResultList();

	}

	@Override
	public Brewery addBrewery(Brewery brewery) {
		em.persist(brewery);
		return brewery;
	}

	@Override
	public Brewery updateBrewery(int id, Brewery brewery) {
		Brewery managed = em.find(Brewery.class, id);
		managed.setName(brewery.getName());
		managed.setCity(brewery.getCity());
		managed.setState(brewery.getState());
		managed.setUrl(brewery.getUrl());
		managed.setLatitude(brewery.getLatitude());
		managed.setLongitude(brewery.getLongitude());
		
		
		return managed;
	}

	@Override
	public boolean deleteBrewery(int id) {
		boolean removed = false;
		Brewery brewery = em.find(Brewery.class, id);
		
		if(brewery != null) {
			em.remove(brewery);
			removed = !em.contains(brewery);
		}
		
		return removed;
	}

}
