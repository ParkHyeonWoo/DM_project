package com.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BoardDAO {
	public List chamDetail(String req) throws Exception;
	
	public List runes(HashMap<String, Object> map) throws Exception;
	
	public List runeInfo(String req) throws Exception;
	
	public List items(HashMap<String, Object> map) throws Exception;
	
	public List itemInfo(String req) throws Exception;

	public List champ() throws Exception;

	public List counter(HashMap<String, Object> map) throws Exception;

	public List spells(HashMap<String, Object> map) throws Exception;

	public List spellInfo(String req) throws Exception;

	public List skills(HashMap<String, Object> map) throws Exception;

	public List skillInfo(HashMap<String, Object> map) throws Exception;

	public List mychampion(String req) throws Exception;
	
	public List champList() throws Exception;

	public List tierList(String req) throws Exception;
	
	public List<Map<String, Object>> duo(Map<String, Object> paramMap);

	public List<Map<String, Object>> duoNull(Map<String, Object> paramMap);
}