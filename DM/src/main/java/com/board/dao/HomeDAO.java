package com.board.dao;

import java.util.List;
import java.util.Map;

import com.board.domain.ChampsearchDTO;
import com.board.domain.HomeDTO;


public interface HomeDAO {


	public List<Map<String, Object>> autoSearch(Map<String, Object> paramMap);

	public List<Map<String, Object>> getChampId();


}
