package com.finalp.moim.teampage.debate.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("tpdebateDao")
public class TPdebateDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
