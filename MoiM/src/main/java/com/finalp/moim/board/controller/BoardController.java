package com.finalp.moim.board.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.board.model.service.BoardService;
import com.finalp.moim.board.model.vo.Board;
import com.finalp.moim.common.Page;

@Controller
public class BoardController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	// DI
	@Autowired
	private BoardService boardService;
	
	// 게시판 페이지 이동 처리용 메소드------------
	// 게시판 리스트 페이지 이동
	@RequestMapping("blist.do")
	public ModelAndView boardListMethod(ModelAndView mv, @RequestParam(name="page", required=false) String page) {
		int currentPage = 1;
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		int limit = 10;
		int listCount = boardService.selectListCount();
		
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = (int)((double)currentPage / limit + 0.9);
		int endPage = startPage + 10 - 1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		Page paging = new Page(startRow, endRow);
		
		ArrayList<Board> list = boardService.selectList(paging);
		
		if(list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("listCount", listCount);
			mv.addObject("maxPage", maxPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("limit", limit);
			
			mv.setViewName("board/BoardList");
		} else {
			mv.addObject("message", currentPage + "페이지 목록 조회 실패!");
			
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	// 게시판 관리 페이지 이동
	@RequestMapping("blistadmin.do")
	public String boardAdminListMethod() {
		return "admin/AdminBoardList";
	}
	
	// 게시판 상세보기 페이지 이동
	@RequestMapping("bdetail.do")
	public ModelAndView boardDetailMethod(ModelAndView mv, @RequestParam("page") int page) {
		mv.addObject("currentPage", page);
		mv.setViewName("board/BoardDetail");
		
		return mv;
	}
	
	// 게시판 작성 페이지 이동
	@RequestMapping("bwriteform.do")
	public String boardWriteFormMethod() {
		return "board/BoardWriteForm";
	}
	
	// 게시판 수정 페이지 이동
	@RequestMapping("bupdate.do")
	public String boardUpdateFormMethod() {
		return "board/BoardUpdateForm";
	}
	// --------------------------------------
	
	// 게시판 관련 기능 메소드--------------------
	// --------------------------------------
}
