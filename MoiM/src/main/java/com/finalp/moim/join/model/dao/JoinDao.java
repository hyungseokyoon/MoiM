package com.finalp.moim.join.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.join.model.vo.Join;

@Repository("joinDao")
public class JoinDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public JoinDao() {}
	
	public int insertJoin(Join join) {
		return sqlSession.insert("joinMapper.insertJoin", join);
	}
}
