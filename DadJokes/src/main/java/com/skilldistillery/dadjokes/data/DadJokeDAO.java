package com.skilldistillery.dadjokes.data;

import java.util.List;

import com.skilldistillery.dadjokes.entities.Joke;

public interface DadJokeDAO {

	Joke findByID(int id);
	List<Joke> findAll();
	Joke create(Joke joke);
	Joke update(int id, Joke joke);
	boolean delete(int id);
}
