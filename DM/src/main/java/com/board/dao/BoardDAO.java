package com.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BoardDAO {
	public List chamDetail(String req) throws Exception;
	
	public List runes(HashMap<String, Object> map) throws Exception;
	
	public List runeInfo(String req) throws Exception;

	public List champList() throws Exception;

<<<<<<< HEAD
	public List tierList(String req) throws Exception;
=======
	public List skillInfo(HashMap<String, Object> map) throws Exception;

	public List mychampion(String req) throws Exception;
<<<<<<< HEAD
>>>>>>> 808c64cd63a815eb2a9c06c980e0fc9c57eb188f
=======
	
	public List<Map<String, Object>> duo(Map<String, Object> paramMap);

	public List<Map<String, Object>> duoNull(Map<String, Object> paramMap);
>>>>>>> 5b30d01a28235c27647c42d16cdc9635078d97d7
}