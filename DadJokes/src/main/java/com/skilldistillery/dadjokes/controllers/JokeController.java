package com.skilldistillery.dadjokes.controllers;

import java.util.ArrayList;
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

	@RequestMapping(path= {"/", "home.do"})
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
		mv.setViewName("views/home");
		return mv;
		
	}
	@RequestMapping(path= {"all.do"})
	public ModelAndView showAllPage() {
		ModelAndView mv = new ModelAndView();
		
		List<Joke> jokes = dao.findAll();
		
		mv.addObject("jokes", jokes);
		mv.setViewName("views/showall");
		return mv;
	}
	@RequestMapping("getJoke.do")
	public ModelAndView jokePage(int jokeId) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("joke", dao.findByID(jokeId));
		mv.setViewName("views/onejoke");
		return mv;
	}
	@RequestMapping("getDeleteWarning.do")
	public ModelAndView senfToDeleteWarningPage(int jokeId) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("joke", dao.findByID(jokeId));
		mv.setViewName("views/deletejokewarning");
		return mv;
	}
	@RequestMapping("getDeleteJoke.do")
	public String senfToDeleteJokePage() {
	
		return "views/deletejoke";
	}
	
	@RequestMapping("delete.do")
	public ModelAndView deleteJoke(int jokeId) {
		ModelAndView mv = new ModelAndView();
		
		boolean success = dao.delete(jokeId);
		mv.addObject("success", success);
		mv.setViewName("views/deleted");
		return mv;
	}
	
	@RequestMapping("find.do")
	public ModelAndView sendToFindJokeByIdPage() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("views/findjokebyid");
		return mv;
	}
	
	@RequestMapping("create.do")
	public ModelAndView sendToCreateJokePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("views/createjokeform");
		return mv;
	}
	
	@RequestMapping("created.do")
	public ModelAndView createJoke(Joke joke) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("joke", dao.create(joke));
		
		mv.setViewName("views/onejoke");
		return mv;
	}
	
	@RequestMapping("update.do")
	public ModelAndView sendToUpdateJokePage(int jokeId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject(dao.findByID(jokeId));
		mv.setViewName("views/updatejokeform");
		return mv;
	}
	
	@RequestMapping("updated.do")
	public ModelAndView updateJoke(Joke joke) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("joke", dao.update(joke.getId(), joke));
		mv.setViewName("views/onejoke");
		return mv;
	}
	





}
