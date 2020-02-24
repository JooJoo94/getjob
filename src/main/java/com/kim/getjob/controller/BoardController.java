package com.kim.getjob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kim.getjob.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping({"", "/", "/board"})
	public String posts(Model model) {
		
		model.addAttribute("boards",boardService.get목록보기());
		
		return "/board/main";
	}
	
	

}
