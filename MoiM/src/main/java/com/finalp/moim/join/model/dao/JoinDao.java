package com.finalp.moim.join.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("joinDao")
public class JoinDao {

	@Autowired
	SqlSessionTemplate sqlSession;
}
