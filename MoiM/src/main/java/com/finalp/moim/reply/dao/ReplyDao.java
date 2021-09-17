package com.finalp.moim.reply.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.reply.model.vo.Reply;

@Repository("replyDao")
public class ReplyDao {
	// root-context.xml
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public ReplyDao() {}

	public ArrayList<Reply> selectReplyList(int board_no) {
		List<Reply> list = sqlSession.selectList("replyMapper.selectReplyList", board_no);
		return (ArrayList<Reply>) list;
	}
}
