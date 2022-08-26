package com.board.dao;

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
		System.out.println("MemberDao SqlSession On -> " + this.sqlSession);
	}

	private static String namespace = "com.board.mappers.board";

	@Override
	public List list() throws Exception {
		return sqlSession.selectList(namespace + ".list");
	}

}