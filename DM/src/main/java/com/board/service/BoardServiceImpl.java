package com.board.service;

import java.util.HashMap;
import java.util.List;
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
	public List champList() throws Exception {
		return dao.champList();
	}

	@Override
	public List tierList(String req) throws Exception {
		return dao.tierList(req);
	}
	@Override
	public List mychampion(String req) throws Exception {
		return dao.mychampion(req);
	}

}