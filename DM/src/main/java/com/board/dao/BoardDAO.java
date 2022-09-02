package com.board.dao;

import java.util.HashMap;
import java.util.List;

public interface BoardDAO {
	public List chamDetail(String req) throws Exception;
	
	public List runes(HashMap<String, Object> map) throws Exception;
	
	public List runeInfo(String req) throws Exception;

	public List champ() throws Exception;
}