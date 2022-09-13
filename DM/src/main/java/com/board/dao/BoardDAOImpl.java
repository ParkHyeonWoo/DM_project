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
	public List items(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".items", map);
	}
	
	@Override
	public List itemInfo(String req) throws Exception {
		return sqlSession.selectList(namespace + ".itemInfo", req);
	}
	
	@Override
	public List counter(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".counter", map);
	}
	
	@Override
	public List spells(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".spells", map);
	}
	
	@Override
	public List spellInfo(String req) throws Exception {
		return sqlSession.selectList(namespace + ".spellInfo", req);
	}
	
	@Override
	public List skills(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".skills", map);
	}
	
	@Override
	public List skillInfo(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".skillInfo", map);
	}
	
	@Override
	public List champ() throws Exception {
		return sqlSession.selectList(namespace + ".champ");
	}
	@Override
	public List mychampion(String req) throws Exception {
		return sqlSession.selectList(namespace + ".mychampion",req);
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