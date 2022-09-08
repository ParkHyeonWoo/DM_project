package com.board.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.board.domain.HomeDTO;
import com.google.gson.JsonArray;

public interface HomeService {
	


	public List<Map<String, Object>> autoSearch(Map<String, Object> paramMap) throws Exception;

	public List<Object> getChampId(String champ_name_kr);


}