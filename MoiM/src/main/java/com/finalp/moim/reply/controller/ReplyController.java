package com.finalp.moim.reply.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalp.moim.reply.model.service.ReplyService;
import com.finalp.moim.reply.model.vo.Reply;

@Controller
public class ReplyController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	// DI
	@Autowired
	private ReplyService replyService;
	
	// 댓글 출력
	@RequestMapping(value = "rlist.do", method = RequestMethod.POST)
	@ResponseBody
	public String replyListMethod(HttpServletResponse response, String board_no) throws UnsupportedEncodingException {
		int b_no = Integer.parseInt(board_no);
		System.out.println("board_no" + b_no);
		ArrayList<Reply> list = replyService.selectReplyList(b_no);
		
		JSONObject sendJSON = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Reply reply : list) {
			JSONObject job = new JSONObject();
			
			job.put("reply_no", reply.getReply_no());
			job.put("board_no", reply.getBoard_no());
			job.put("user_no", reply.getUser_no());
			job.put("reply_content", URLEncoder.encode(reply.getReply_content(), "utf-8"));
			job.put("reply_date", reply.getReply_date().toString());
			
			jarr.add(job);
		}
		
		sendJSON.put("list", jarr);
		
		return sendJSON.toJSONString();
	}
	
	// 댓글 작성
	
	// 댓글 수정
	
	// 댓글 삭제
}
