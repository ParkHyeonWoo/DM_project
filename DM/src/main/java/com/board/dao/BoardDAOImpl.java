package com.board.dao;

import java.util.HashMap;
import java.util.List;
//import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

	private final SqlSession sqlSession;
	
	@Autowired
	public BoardDAOImpl(SqlSession sqlSession) {
		this.sqlSession=sqlSession;
		System.out.println("BoardDAO SqlSession On -> " + this.sqlSession);
	}

	private static String namespace = "com.board.mappers.board";
	
	@Override
	public List chamDetail(String req) throws Exception {
		return sqlSession.selectList(namespace + ".chamDetail", req);
	}
	
	@Override
	public List runes(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".runes", map);
	}
	
	@Override
	public List runeInfo(String req) throws Exception {
		return sqlSession.selectList(namespace + ".runeInfo", req);
	}
	
	@Override
	public List champList() throws Exception {
		return sqlSession.selectList(namespace + ".champList");
	}

	@Override
	public List tierList(String req) throws Exception {
		return sqlSession.selectList(namespace + ".tierList", req);
	}

}