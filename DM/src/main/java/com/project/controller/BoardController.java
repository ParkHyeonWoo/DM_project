package com.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Inject
	private BoardService service;

	@RequestMapping(value = "/chamDetail", method = RequestMethod.GET)
	public void chamDetail(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.println(req.getParameter("chamId"));
		List list = service.chamDetail(req.getParameter("chamId"));
		model.addAttribute("chamDetail", list);
	}
	
	@RequestMapping(value = "/runes", method = RequestMethod.GET)
	public void runes(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.printf(req.getParameter("chamId"), req.getParameter("lane"));
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("chamId", req.getParameter("chamId"));
		map.put("lane", req.getParameter("lane"));
		List list = service.runes(map);
		model.addAttribute("runes", list);
	}
	
	@RequestMapping(value = "/runeInfo", method = RequestMethod.GET)
	public void runeInfo(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.println(req.getParameter("runeId"));
		List runeInfo = service.runeInfo(req.getParameter("runeId"));
		model.addAttribute("runeInfo", runeInfo);
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) throws Exception {
		return "index";
	}
		
	@RequestMapping(value = "/champ", method = RequestMethod.GET)
	public void list2(Locale locale, Model model) throws Exception {
		List champ = service.champ();
		model.addAttribute("champ", champ);
	}
	
}