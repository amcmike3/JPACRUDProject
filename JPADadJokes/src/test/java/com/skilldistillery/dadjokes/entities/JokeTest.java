package com.skilldistillery.dadjokes.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class JokeTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Joke joke;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPADadJokes");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		joke = em.find(Joke.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		joke = null;
	}

	@Test
	void test_Joke_entity_basic_mapping_tests() {
		assertNotNull(joke);
		assertEquals("what do you call an angry carrot?", joke.getSetUp());
		assertEquals("a steamed veggie", joke.getPunchLine());
		assertEquals(7, joke.getEmbarassLevel());
		assertEquals(4, joke.getGroanLevel());
		assertEquals(4, joke.getLaughLevel());
		

	}
}
