package com.finalp.moim.team.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("teamDao")
public class TeamDao {
	// root-context.xml
	@Autowired
	private SqlSessionTemplate session;
	
	public TeamDao() {}
}
