package com.finalp.moim.recruit.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.review.controller.ReviewController;

@Controller
public class RecruitController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	// DI
	@Autowired

	// 구인페이지 이동
	@RequestMapping("rclist.do")
	public String recruitListMethod() {
		return "recruit/recruitMainPage";
	}

	// 구인페이지 이동
	@RequestMapping("rcdetail.do")
	public String recruitDetailMethod() {
		return "recruit/recruitDetailView";
	}

	// 구인페이지 개설
	@RequestMapping("rcinsert.do")
	public String recruitWriteForm() {
		return "recruit/recruitWriteForm";
	}
	
	// 구인페이지 개설
		@RequestMapping("rcupview.do")
		public String recruitUpdateForm() {
			return "recruit/recruitUpdateView";
		}

}
