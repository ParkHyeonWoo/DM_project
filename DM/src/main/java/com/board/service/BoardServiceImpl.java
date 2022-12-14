package com.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.board.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public List chamDetail(String req) throws Exception {
		return dao.chamDetail(req);
	}
	
	@Override
	public List runes(HashMap<String, Object> map) throws Exception {
		return dao.runes(map);
	}
	
	@Override
	public List runeInfo(String req) throws Exception {
		return dao.runeInfo(req);
	}
	
	@Override
	public List items(HashMap<String, Object> map) throws Exception {
		return dao.items(map);
	}
	
	@Override
	public List itemInfo(String req) throws Exception {
		return dao.itemInfo(req);
	}
	
	@Override
	public List counter(HashMap<String, Object> map) throws Exception {
		return dao.counter(map);
	}
	
	@Override
	public List spells(HashMap<String, Object> map) throws Exception {
		return dao.spells(map);
	}
	
	@Override
	public List spellInfo(String req) throws Exception {
		return dao.spellInfo(req);
	}
	
	@Override
	public List skills(HashMap<String, Object> map) throws Exception {
		return dao.skills(map);
	}
	
	@Override
	public List skillInfo(HashMap<String, Object> map) throws Exception {
		return dao.skillInfo(map);
	}

	@Override
	public List champ() throws Exception {
		return dao.champ();
	}
	@Override
	public List mychampion(String req) throws Exception {
		return dao.mychampion(req);
	}

	@Override
	public List<Map<String, Object>> duo(Map<String, Object> paramMap) {
		System.out.println(paramMap);
		return dao.duo(paramMap);
	}
	
	@Override
	public List<Map<String, Object>> duoNull(Map<String, Object> paramMap) {
		System.out.println(paramMap);
		return dao.duoNull(paramMap);
	}
	
	@Override
	public List champList() throws Exception {
		return dao.champList();
	}

	@Override
	public List tierList(String req) throws Exception {
		return dao.tierList(req);
	}
	

}