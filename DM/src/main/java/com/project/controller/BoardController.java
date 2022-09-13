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
=======
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
>>>>>>> 5b30d01a28235c27647c42d16cdc9635078d97d7

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
	
	@Inject
	private HomeService homeservice;

	@RequestMapping(value = "/chamDetail", method = RequestMethod.GET)
	public void chamDetail(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.println(req.getParameter("chamId"));
		List list = service.chamDetail(req.getParameter("chamId"));
		model.addAttribute("chamDetail", list);
	}
<<<<<<< HEAD
	
	@RequestMapping(value = "/runes", method = RequestMethod.GET)
	public void runes(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.printf(req.getParameter("chamId"), req.getParameter("lane"));
=======
		
	@RequestMapping(value = {"/runes", "/items", "/counter", "/spells", "/skills", "skillInfo"}, method = RequestMethod.GET)
	public void boardMap(Locale locale, Model model, HttpServletRequest req) throws Exception {
		String reqUrl = (String)req.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
>>>>>>> 5b30d01a28235c27647c42d16cdc9635078d97d7
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
	
	@RequestMapping(value = "/champList", method = RequestMethod.GET)
	public void champList(Locale locale, Model model) throws Exception {
		List list = service.champList();
		model.addAttribute("champList", list);
	}
	
	@RequestMapping(value = "/banpick", method = RequestMethod.GET)
	public void banpick(Locale locale, Model model) throws Exception {
		List list = service.champList();
		model.addAttribute("champList", list);
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
	
<<<<<<< HEAD
	@RequestMapping(value = "/tierList", method = RequestMethod.GET)
	public void tierList(Locale locale, Model model, HttpServletRequest req) throws Exception {
		System.out.println(req.getParameter("lane"));
		List tierList = service.tierList(req.getParameter("lane"));
		model.addAttribute("tierList", tierList);
=======
	@RequestMapping(value = "getChampId", method = RequestMethod.GET)
	public @ResponseBody List<Map<String, Object>> getChampId(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Map<String, Object>> champList = homeservice.getChampId();
		System.out.println("챔피언: "+ champList);
		
		
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
>>>>>>> 5b30d01a28235c27647c42d16cdc9635078d97d7
	}
}