package com.skilldistillery.breweries.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class BreweryTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Brewery brewery;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPABreweries");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		brewery = em.find(Brewery.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		brewery = null;
	}

	@Test
	void test_Brewery_entity_mapping() {
		assertNotNull(brewery);
		assertEquals("Spice Trade Brewing", brewery.getName());
		
		
	}
	@Test
	void test_Brewery_add() {
		assertNotNull(brewery);
		
	}
}
