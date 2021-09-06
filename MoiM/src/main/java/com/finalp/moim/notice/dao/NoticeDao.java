package com.finalp.moim.notice.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("noticeDao")
public class NoticeDao {
	// root-context.xml
	@Autowired
	private SqlSessionTemplate session;
	
	public NoticeDao() {}
}
