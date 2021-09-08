package com.finalp.moim.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.board.model.service.BoardService;

@Controller
public class BoardController {
	// Logger
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	// DI
	@Autowired
	private BoardService boardService;
	
	// 게시판 페이지 이동 처리용 메소드------------
	// 게시판 리스트 페이지 이동
	@RequestMapping("blist.do")
	public String boardListMethod() {
		return "board/BoardList";
	}
	
	// 게시판 관리 페이지 이동
	@RequestMapping("blistadmin.do")
	public String boardAdminListMethod() {
		return "admin/AdminBoardList";
	}
	
	// 게시판 상세보기 페이지
	@RequestMapping("bdetail.do")
	public String boardDetailMethod() {
		return "board/BoardDetail";
	}
	
	// 게시판 작성 페이지
	@RequestMapping("bwriteform.do")
	public String boardWriteFormMethod() {
		return "board/BoardWriteForm";
	}
	// --------------------------------------
	
	// 게시판 관련 기능 메소드--------------------
	// --------------------------------------
}
