package com.skilldistillery.dadjokes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.dadjokes.data.DadJokeDAO;

@Controller
public class JokeController {
	
	@Autowired
	private DadJokeDAO dao;

	@RequestMapping(path= {"/", "home.do"})
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("jokes", dao.findAll());
		
		mv.setViewName("home");
		return mv;
	}
}
