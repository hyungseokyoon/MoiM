package com.finalp.moim.recruit.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("recruitDao")
public class RecruitDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
}
