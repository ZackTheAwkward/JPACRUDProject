package com.skilldistillery.breweries.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABrewery");
		em = emf.createEntityManager();
		
		em.persist(brewery);
		em.flush();
		
		return brewery;
	}


	@Override
	public Brewery updateBrewery(int id, Brewery brewery) {
		return null;
	}


	@Override
	public boolean deleteBrewery(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
