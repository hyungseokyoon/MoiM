package com.finalp.moim.reply.model.service;

import java.util.ArrayList;

import com.finalp.moim.reply.model.vo.Reply;

public interface ReplyService {
	ArrayList<Reply> selectReplyList(int board_no);
}
