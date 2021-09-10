package com.finalp.moim.recruit.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.common.Page;
import com.finalp.moim.recruit.model.service.RecruitService;
import com.finalp.moim.recruit.model.vo.Recruit;
import com.finalp.moim.review.controller.ReviewController;

@Controller
public class RecruitController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	// DI
	@Autowired
	RecruitService recruitService;

	// 구인페이지 이동 및 리스트 출력
	@RequestMapping("rclist.do")
	public ModelAndView recruitListMethod(ModelAndView mv, @RequestParam(name = "page", required = false) String page) {
		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 페이징 처리
		int limit = 10; // 한 페이지에 출력할 목록 갯수
		// 페이지 계산을 위해 총 목록갯수 조회
		int listCount = recruitService.selectListCount();
		// 페이지 수 계산
		// 목록이 11개이면 총2페이지가 나오게 계산식 작성
		int maxPage = (int) ((double) listCount / limit + 0.9);
		// 현재 페이지가 포함된 페이지 그룹의 시작값
		// 뷰페이지에 페이지 숫자를 10개씩 보여지게 한다면
		int startPage = (int) ((double) currentPage / 10 + 0.9);
		// 현재 페이지가 포함된 페이지 그룹의 끝값
		// 페이지 수가 10개이면
		int endPage = startPage + 10 - 1;

		if (maxPage < endPage) {
			endPage = maxPage;
		}

		// 쿼리문에 전달할 현재 페이지에 출력할 목록의 첫행과 끝행
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		Page paging = new Page(startRow, endRow);
		
		ArrayList<Recruit> list = recruitService.selectList(paging);
		
		if(list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("listCount", listCount);
			mv.addObject("maxPage", maxPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("limit", limit);
			
			mv.setViewName("recruit/recruitMainPage");
			
		}else {
			mv.addObject("message", currentPage + "페이지 목록 조회 실패.");
			mv.setViewName("common/error");
		}
		
		return mv;

		
	}

	// 구인페이지 이동
	@RequestMapping("rcdetail.do")
	public String recruitDetailMethod() {
		return "recruit/recruitDetailView";
	}

	// 구인페이지 작성폼
	@RequestMapping("rcwrite.do")
	public String recruitWriteForm() {
		return "recruit/recruitWriteForm";
	}

	// 구인페이지 수정페이지 업로드
	@RequestMapping("rcupview.do")
	public String recruitUpdateForm() {
		return "recruit/recruitUpdateView";
	}

}
