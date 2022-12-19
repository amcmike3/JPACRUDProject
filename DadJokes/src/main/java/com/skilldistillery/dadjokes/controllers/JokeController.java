package com.skilldistillery.dadjokes.controllers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.dadjokes.data.DadJokeDAO;
import com.skilldistillery.dadjokes.entities.Joke;

@Controller
public class JokeController {
	
	@Autowired
	private DadJokeDAO dao;

	@RequestMapping(path= {"/", "home.do", "/DadJokes/"})
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView();
		
		List<Joke> jokes = dao.findAll();
		
		List<ArrayList<Joke>> jokeList = new ArrayList<>();
		for(int i = 0; i < 21; i += 3) {
			ArrayList<Joke> subJokes = new ArrayList<>();
			for (int j = 0; j < 3; j++) {
				int rand = (int) (Math.random() * jokes.size());
				if (jokes.size() > rand + j) {
					subJokes.add(jokes.get(rand + j));	
				}
			}
			jokeList.add(subJokes);
		}

		mv.addObject("jokes", jokeList);
		mv.setViewName("home");
		return mv;
		
	}
	@RequestMapping(path= {"all.do", "/DadJokes/all.do"})
	public ModelAndView showAllPage() {
		ModelAndView mv = new ModelAndView();
		
		List<Joke> jokes = dao.findAll();
		Collections.shuffle(jokes);
		mv.addObject("jokes", jokes);
		mv.setViewName("showall");
		return mv;
	}
	
	@RequestMapping(path= {"getJoke.do", "/DadJokes/getJoke.do"})
	public ModelAndView jokePage(int jokeId) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("joke", dao.findByID(jokeId));
		mv.setViewName("onejoke");
		return mv;
	}
	
	@RequestMapping(path={"oneMore.do", "/DadJokes/oneMore.do"})
	public ModelAndView jokePage() {
		ModelAndView mv = new ModelAndView();
		int num = (int) (Math.random() * dao.findAll().size() - 1);
		mv.addObject("joke", dao.findByID(num));
		mv.setViewName("onejoke");
		return mv;
	}
	
	@RequestMapping(path={"getDeleteWarning.do", "/DadJokes/getDeleteWarning.do"})
	public ModelAndView senfToDeleteWarningPage(int jokeId) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("joke", dao.findByID(jokeId));
		mv.setViewName("deletejokewarning");
		return mv;
	}
	@RequestMapping(path={"getDeleteJoke.do", "/DadJokes/getDeleteJoke.do"})
	public String senfToDeleteJokePage() {
	
		return "deletejoke";
	}
	
	@RequestMapping(path={"delete.do", "/DadJokes/delete.do"})
	public ModelAndView deleteJoke(int jokeId) {
		ModelAndView mv = new ModelAndView();
		
		boolean success = dao.delete(jokeId);
		mv.addObject("success", success);
		mv.setViewName("deleted");
		return mv;
	}
	
	@RequestMapping(path={"find.do", "/DadJokes/find.do"})
	public ModelAndView sendToFindJokeByIdPage() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("findjokebyid");
		return mv;
	}
	
	@RequestMapping(path={"create.do", "/DadJokes/create.do"})
	public ModelAndView sendToCreateJokePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createjokeform");
		return mv;
	}
	
	@RequestMapping(path={"created.do", "/DadJokes/created.do"})
	public ModelAndView createJoke(Joke joke) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("joke", dao.create(joke));
		
		mv.setViewName("onejoke");
		return mv;
	}
	
	@RequestMapping(path={"update.do", "/DadJokes/update.do"})
	public ModelAndView sendToUpdateJokePage(int jokeId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject(dao.findByID(jokeId));
		mv.setViewName("updatejokeform");
		return mv;
	}
	
	@RequestMapping(path={"updated.do", "/DadJokes/updated.do"})
	public ModelAndView updateJoke(Joke joke) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("joke", dao.update(joke.getId(), joke));
		mv.setViewName("onejoke");
		return mv;
	}
	





}
