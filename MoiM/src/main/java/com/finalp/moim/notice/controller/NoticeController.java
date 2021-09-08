package com.finalp.moim.notice.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.notice.model.service.NoticeService;

@Controller
public class NoticeController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	// DI
	@Autowired
	private NoticeService noticeService;
	
	// 공지사항 페이지 이동 처리용 메소드---------
	// 공지사항 리스트 페이지
	@RequestMapping("nlist.do")
	public String noticeListMethod() {
		return "notice/NoticeList";
	}
	
	// 공지사항 상세보기 페이지
	@RequestMapping("ndetail.do")
	public String noticeDetailMethod() {
		return "notice/NoticeDetail";
	}
	
	// 공지사항 작성 페이지
	@RequestMapping("nwriteform.do")
	public String noticeWriteFormMethod() {
		return"notice/NoticeWriteForm";
	}
	// ------------------------------------
	
	// 공지사항 관련 기능 메소드----------------
	// ------------------------------------
}
