package com.finalp.moim.notice.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.board.model.vo.Board;
import com.finalp.moim.common.Page;
import com.finalp.moim.notice.model.service.NoticeService;
import com.finalp.moim.notice.model.vo.Notice;

@Controller
public class NoticeController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	// DI
	@Autowired
	private NoticeService noticeService;
	
	// 공지사항 페이지 이동 처리용 메소드---------
	// 공지사항 리스트 페이지 이동
	@RequestMapping("nlist.do")
	public ModelAndView noticeListMethod(ModelAndView mv, @RequestParam(name="page", required=false) String page) {
		int currentPage = 1;
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		int limit = 10;
		int listCount = noticeService.selectListCount();
		
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = (int)((double)currentPage / limit + 0.9);
		int endPage = startPage + 10 - 1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		Page paging = new Page(startRow, endRow);
		
		ArrayList<Notice> list = noticeService.selectList(paging);
		
		if(list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("listCount", listCount);
			mv.addObject("maxPage", maxPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("limit", limit);
			mv.addObject("startRow", startRow);
			mv.addObject("endRow", endRow);
			
			mv.setViewName("notice/NoticeList");
		} else {
			mv.addObject("message", currentPage + "페이지 목록 조회 실패!");
			
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	// 공지사항 상세보기 페이지 이동
	@RequestMapping("ndetail.do")
	public ModelAndView noticeDetailMethod(ModelAndView mv, @RequestParam("notice_no") int notice_no, 
			@RequestParam("page") int page) {
		Notice notice = noticeService.selectNotice(notice_no);
		
		if(notice != null) {
			mv.addObject("notice", notice);
			mv.addObject("currentPage", page);
			
			mv.setViewName("notice/NoticeDetail");
		} else {
			mv.addObject("message", notice_no + "번 공지사항 조회 실패");
			
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	// 공지사항 작성 페이지 이동
	@RequestMapping("nwriteform.do")
	public String noticeWriteFormMethod() {
		return"notice/NoticeWriteForm";
	}
	
	// 공지사항 수정 페이지 이동
	@RequestMapping("nupdate.do")
	public String noticeUpdateFormMethod() {
		return "notice/NoticeUpdateForm";
	}
	// ------------------------------------
	
	// 공지사항 관련 기능 메소드----------------
	// ------------------------------------
}
