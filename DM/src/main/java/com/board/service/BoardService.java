package com.board.service;

import java.util.List;

public interface BoardService {
	public List list() throws Exception;

	public List list(String req) throws Exception;
}