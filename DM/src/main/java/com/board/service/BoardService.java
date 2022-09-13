package com.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BoardService {
	public List chamDetail(String req) throws Exception;
	
	public List runes(HashMap<String, Object> map) throws Exception;
	
	public List runeInfo(String req) throws Exception;
	
	public List champ() throws Exception;

	public List<Map<String, Object>> duo(Map<String, Object> paramMap);

	public List<Map<String, Object>> duoNull(Map<String, Object> paramMap);
}