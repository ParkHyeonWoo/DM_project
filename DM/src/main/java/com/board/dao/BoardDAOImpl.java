package com.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List champ() throws Exception {
		return sqlSession.selectList(namespace + ".champ");
	}

	@Override
	public List<Map<String, Object>> duo(Map<String, Object> paramMap) {
		System.out.println(paramMap);
		System.out.println(sqlSession.selectList(namespace + ".selectduo", paramMap));
		return sqlSession.selectList(namespace + ".selectduo",paramMap);
	}
	
	@Override
	public List<Map<String, Object>> duoNull(Map<String, Object> paramMap) {
		System.out.println(paramMap);
		System.out.println(sqlSession.selectList(namespace + ".selectduoNULL", paramMap));
		return sqlSession.selectList(namespace + ".selectduoNULL", paramMap);
	}
}