package com.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.domain.ChampsearchDTO;
import com.board.domain.HomeDTO;


@Repository
public class HomeDAOImpl implements HomeDAO {
	
	private final SqlSession sqlSession;
	
	@Autowired
	public HomeDAOImpl(SqlSession sqlSession) {
		this.sqlSession=sqlSession;
		System.out.println("HomeDAO SqlSession On -> " + this.sqlSession);
	}
	private static String namespace = "com.board.mappers.board";
	

	@Override
	public List<Map<String, Object>> autoSearch(Map<String, Object> paramMap){
		
		return sqlSession.selectList(namespace + ".searchChamp", paramMap);
		
	}


	@Override
	public List<Map<String, Object>> getChampId() {
		System.out.println(sqlSession.selectList(namespace+ ".getChampList"));

		return sqlSession.selectList(namespace+ ".getChampList");
	}
	
	

}
