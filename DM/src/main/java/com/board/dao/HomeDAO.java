package com.board.dao;

import java.util.List;
import java.util.Map;

import com.board.domain.HomeDTO;


public interface HomeDAO {


	public List<Map<String, Object>> autoSearch(Map<String, Object> paramMap);

	public List<Object> getChampId(String champ_name_kr);


}
