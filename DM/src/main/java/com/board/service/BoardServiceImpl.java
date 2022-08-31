package com.board.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.board.dao.BoardDAO;
import com.board.domain.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public List list() throws Exception {
		return dao.list();
	}
	
	@Override
	public List list(String req) throws Exception {
		return dao.list(req);
	}

}