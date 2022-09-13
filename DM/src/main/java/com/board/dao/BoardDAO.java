package com.board.dao;

import java.util.HashMap;
import java.util.List;

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
>>>>>>> 808c64cd63a815eb2a9c06c980e0fc9c57eb188f
}