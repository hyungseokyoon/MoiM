package com.finalp.moim.review.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reviewDao")
public class ReviewDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public ReviewDao() {}
}