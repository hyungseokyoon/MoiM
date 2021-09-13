package com.finalp.moim.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDao")
public class BoardDao {
	// root-context.xml
	@Autowired
	private SqlSessionTemplate session;
	
	public BoardDao() {}
}
