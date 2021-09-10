package com.finalp.moim.userinfo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userinfoDao")
public class UserInfoDao {
	// root-context.xml
	@Autowired
	private SqlSessionTemplate session;
	
	public UserInfoDao() {};
}
