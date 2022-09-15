package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.ChampsearchDTO;
import com.board.domain.HomeDTO;
import com.board.service.HomeService;
import com.google.gson.JsonArray;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;



@Controller
@AllArgsConstructor
@Slf4j
public class HomeController {
	
	private HomeService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public  String home() throws Exception {
		log.info("Welcome home! The client locale is kr.");
		return "home";
	}
	
	@RequestMapping(value = "getChampId", method = RequestMethod.GET)
	public @ResponseBody List<Map<String, Object>> getChampId(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Map<String, Object>> champList = service.getChampId();
		System.out.println("챔프리스트: "+ champList);
		
		
		return champList;
	}
	
	@RequestMapping(value = "autoSearch", method= RequestMethod.POST)	
	public @ResponseBody Map<String, Object> autoSearch(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpServletResponse response) throws Exception{
		List<Map<String, Object>> resultList = service.autoSearch(paramMap);
		paramMap.put("resultList", resultList);
		System.out.println(paramMap);
						
		return paramMap;
	}

}
