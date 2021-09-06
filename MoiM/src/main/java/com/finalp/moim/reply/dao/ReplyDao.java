package com.finalp.moim.reply.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("replyDao")
public class ReplyDao {
	// root-context.xml
	@Autowired
	private SqlSessionTemplate session;
	
	public ReplyDao() {}
}
