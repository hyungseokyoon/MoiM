package com.finalp.moim.reply.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.reply.dao.ReplyDao;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {
	// DI
	@Autowired
	private ReplyDao replyDao;
	
	public ReplyServiceImpl() {}
}
