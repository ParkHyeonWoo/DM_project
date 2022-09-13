package com.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
import org.springframework.web.servlet.HandlerMapping;
=======
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
>>>>>>> ww

import com.board.service.BoardService;
import com.board.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/board/*")
public class BoardController {

	@Inject
	private BoardService service;
<<<<<<< HEAD

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
=======
	
	@Inject
	private HomeService homeservice;
	
	
	@RequestMapping(value = "/chamDetail", method = RequestMethod.GET)
	public void chamDetail(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.println(req.getParameter("chamId"));
		List list = service.chamDetail(req.getParameter("chamId"));
		model.addAttribute("chamDetail", list);
>>>>>>> ww
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
	@RequestMapping(value = "/mychamp", method = RequestMethod.GET)
	public void mychamp(Locale locale, Model model) throws Exception {
		
	}
	@RequestMapping(value = "/mychampion", method = RequestMethod.GET)
	public void mychampion(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.println(req.getParameter("championClass"));
		List mychampion = service.mychampion(req.getParameter("championClass"));
		model.addAttribute("mychampion", mychampion);
	}
	
	@RequestMapping(value = "getChampId", method = RequestMethod.GET)
	public @ResponseBody List<Map<String, Object>> getChampId(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Map<String, Object>> champList = homeservice.getChampId();
		System.out.println("챔피언 리스트: "+ champList);
		
		
		return champList;
	}
	
	@RequestMapping(value = "autoSearch", method= RequestMethod.POST)	
	public @ResponseBody Map<String, Object> autoSearch(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpServletResponse response) throws Exception{
		List<Map<String, Object>> resultList = homeservice.autoSearch(paramMap);
		paramMap.put("resultList", resultList);
		System.out.println(paramMap);
						
		return paramMap;
	}

	@RequestMapping(value = "/duo", method = RequestMethod.GET)
	public void duo(Model model) throws Exception{
		
		
	}
	@RequestMapping(value = "duoSearch", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> duo(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpServletResponse response) throws Exception{

		System.out.println(paramMap);
		List<Map<String, Object>> resultList = service.duo(paramMap);
		paramMap.put("resultList", resultList);
		System.out.println(paramMap);
						
		return paramMap;
	}
	
	@RequestMapping(value = "duoSearchNull", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> duoNULL(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpServletResponse response) throws Exception{

		System.out.println("null " +  paramMap);
		List<Map<String, Object>> resultList = service.duoNull(paramMap);
		paramMap.put("resultList", resultList);
		System.out.println(paramMap);
						
		return paramMap;
	}
}