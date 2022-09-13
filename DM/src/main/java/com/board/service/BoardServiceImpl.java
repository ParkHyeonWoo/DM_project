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
	public List champ() throws Exception {
		return dao.champ();
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
	

}