package com.board.service;

import java.util.HashMap;
import java.util.List;

public interface BoardService {
	public List chamDetail(String req) throws Exception;
	
	public List runes(HashMap<String, Object> map) throws Exception;
	
	public List runeInfo(String req) throws Exception;
	
	public List champList() throws Exception;
	
<<<<<<< HEAD
	public List tierList(String req) throws Exception;
=======
	public List itemInfo(String req) throws Exception;
	
	public List champ() throws Exception;

	public List counter(HashMap<String, Object> map) throws Exception;

	public List spells(HashMap<String, Object> map) throws Exception;

	public List spellInfo(String req) throws Exception;

	public List skills(HashMap<String, Object> map) throws Exception;

	public List skillInfo(HashMap<String, Object> map) throws Exception;

	public List mychampion(String req) throws Exception;
>>>>>>> 808c64cd63a815eb2a9c06c980e0fc9c57eb188f
}