package com.board.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.HomeDAO;
import com.board.domain.HomeDTO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class HomeServiceImpl implements HomeService{

	@Setter(onMethod_ = @Autowired)
	private HomeDAO homedao;
	

	@Override
	public List<Map<String, Object>>autoSearch(Map<String, Object> paramMap) throws Exception{
		System.out.println(homedao.autoSearch(paramMap));
		return homedao.autoSearch(paramMap);
	}


	@Override
	public List<Object> getChampId(String champ_name_kr) {
		
		return homedao.getChampId(champ_name_kr);
	}
		
	
	

}
