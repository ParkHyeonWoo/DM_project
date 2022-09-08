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
import org.springframework.web.servlet.HandlerMapping;

import com.board.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Inject
	private BoardService service;

	@RequestMapping(value = {"/chamDetail", "/runeInfo", "/itemInfo", "/spellInfo"}, method = RequestMethod.GET)
	public void board(Locale locale, Model model, HttpServletRequest req) throws Exception {
		String reqUrl = (String)req.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		if(reqUrl.equals("/board/chamDetail")) {
			List chamDetail = service.chamDetail(req.getParameter("chamId"));
			model.addAttribute("chamDetail", chamDetail);
		} else if(reqUrl.equals("/board/runeInfo")) {
			List runeInfo = service.runeInfo(req.getParameter("runeId"));
			model.addAttribute("runeInfo", runeInfo);
		} else if(reqUrl.equals("/board/itemInfo")) {
			List itemInfo = service.itemInfo(req.getParameter("itemId"));
			model.addAttribute("itemInfo", itemInfo);
		} else if(reqUrl.equals("/board/spellInfo")) {
			List spellInfo = service.spellInfo(req.getParameter("spellId"));
			model.addAttribute("spellInfo", spellInfo);
		}
		System.out.println("board end");
	}
	
	@RequestMapping(value = {"/runes", "/items", "/counter", "/spells", "/skills", "skillInfo"}, method = RequestMethod.GET)
	public void boardMap(Locale locale, Model model, HttpServletRequest req) throws Exception {
		String reqUrl = (String)req.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("chamId", req.getParameter("chamId"));
		map.put("lane", req.getParameter("lane"));
		if(reqUrl.equals("/board/runes")) {
			List runes = service.runes(map);
			model.addAttribute("runes", runes);
		} else if(reqUrl.equals("/board/items")) {
			List items = service.items(map);
			model.addAttribute("items", items);
		} else if(reqUrl.equals("/board/counter")) {
			List counter = service.counter(map);
			model.addAttribute("counter", counter);
		} else if(reqUrl.equals("/board/spells")) {
			List spells = service.spells(map);
			model.addAttribute("spells", spells);
		} else if(reqUrl.equals("/board/skills")) {
			List skills = service.skills(map);
			model.addAttribute("skills", skills);
		} else if(reqUrl.equals("/board/skillInfo")) {
			List skillInfo = service.skillInfo(map);
			model.addAttribute("skillInfo", skillInfo);
		}
		System.out.println("boardMap end");
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void index(Locale locale, Model model) throws Exception {
		
	}
		
	@RequestMapping(value = "/champ", method = RequestMethod.GET)
	public void list2(Locale locale, Model model) throws Exception {
		List champ = service.champ();
		model.addAttribute("champ", champ);
	}
	
}