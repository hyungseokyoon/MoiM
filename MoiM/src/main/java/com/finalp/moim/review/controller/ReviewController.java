package com.finalp.moim.review.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ReviewController {
	

		// Logger
		private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
		
		// DI
		@Autowired
		
		
		// 공지사항 페이지 이동 처리용 메소드
		@RequestMapping("rvlist.do")
		public String reviewListMethod() {
			return "review/reviewListView";
		}
		// --------------------------
		
		// 공지사항 관련 기능 메소드
		// --------------------------
}
