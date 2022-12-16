package com.skilldistillery.dadjokes.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.dadjokes.entities.Joke;
@Service
@Transactional
public class DadJokeDAOImpl implements DadJokeDAO {

	@PersistenceContext
	private EntityManager em;
	@Override
	public Joke findByID(int id) {
		return em.find(Joke.class, id);
	}

	@Override
	public List<Joke> findAll() {

		String jpql = "SELECT j FROM Joke j";
		
		List<Joke> jokes = em.createQuery(jpql, Joke.class)
		.getResultList();
		
		return jokes;
	}

	@Override
	public Joke create(Joke joke) {

		em.persist(joke);
		
		return joke;
	}

	@Override
	public Joke update(int id, Joke joke) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
