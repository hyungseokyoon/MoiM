package com.finalp.moim.mypage.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.board.model.vo.Board;
import com.finalp.moim.mypage.model.service.MyPageService;
import com.finalp.moim.mypage.model.vo.MyBoard;
import com.finalp.moim.mypage.model.vo.MyPost;
import com.finalp.moim.review.model.vo.Review;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	// DI
	@Autowired
	private MyPageService mypageService;
	
	// 마이페이지 회원확인
	@RequestMapping("mypage.do")
	public String myPageForward(/*
			@RequestParam("userid") String userid, 
			ModelAndView mv, Object userinfoService*/) {
		
/*		UserInfo userInfo = userinfoService.selectUserInfo(userid);*/
		return "myPage/myPage";  //내보낼 뷰파일명 리턴
	}
	
	// 내 정보 보기
	@RequestMapping("uinfo.do")
	public String userInfoForward() {
		return "myPage/userInfo";  //내보낼 뷰파일명 리턴
	}
	// 회원 수정하기
	@RequestMapping("uupdate.do")
	public String userUpdateForward() {
		return "myPage/userUpdate";  //내보낼 뷰파일명 리턴
	}
	// 회원 탈퇴하기
	@RequestMapping("udelete.do")
	public String userDeleteForward() {
		return "myPage/userDelete";  //내보낼 뷰파일명 리턴
	}
	// 내가 쓴 글 보기
	@RequestMapping("upost.do")
	public ModelAndView userPostForward(ModelAndView mv, @RequestParam(name="page", required=false) String page,
			@RequestParam(name="user_no") int user_no) {
		
			int currentPage = 1;
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			
			
			int limit = 10;
			int listCount = mypageService.selectMyBoardCount(user_no);
			
			int maxPage = (int)((double)listCount / limit + 0.9);
			int startPage = (int)((double)currentPage / limit + 0.9);
			int endPage = startPage + 10 - 1;
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			MyBoard mb = new MyBoard(startRow, endRow, user_no);
			
			ArrayList<Board> blist = mypageService.selectMyBoard(mb);
			
			
				mv.addObject("blist", blist);
				mv.addObject("listCount", listCount);
				mv.addObject("maxPage", maxPage);
				mv.addObject("currentPage", currentPage);
				mv.addObject("startPage", startPage);
				mv.addObject("endPage", endPage);
				mv.addObject("limit", limit);
				mv.addObject("startRow", startRow);
				mv.addObject("endRow", endRow);
				
				mv.setViewName("myPage/userPost");
			
			
			return mv;
		}
		
	
	@RequestMapping("upost2.do")
	public ModelAndView userPostForward2(ModelAndView mv, @RequestParam(name="page", required=false) String page,
			@RequestParam(name="user_nn") String user_nn) {
		
			int currentPage = 1;
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			
			
			int limit = 10;
			int listCount = mypageService.selectMyReviewCount(user_nn);
			
			int maxPage = (int)((double)listCount / limit + 0.9);
			int startPage = (int)((double)currentPage / limit + 0.9);
			int endPage = startPage + 10 - 1;
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			MyPost mp = new MyPost(startRow, endRow, user_nn);
			
			ArrayList<Review> rlist = mypageService.selectMyReview(mp);
			
			
				mv.addObject("rlist", rlist);
				mv.addObject("listCount", listCount);
				mv.addObject("maxPage", maxPage);
				mv.addObject("currentPage", currentPage);
				mv.addObject("startPage", startPage);
				mv.addObject("endPage", endPage);
				mv.addObject("limit", limit);
				mv.addObject("startRow", startRow);
				mv.addObject("endRow", endRow);
				
				mv.setViewName("myPage/userPost2");
			
			
			return mv;
		}
		
	
	
	
	
	// 내 팀 보기
	@RequestMapping("uteam.do")
	public String userTeamForward() {
		return "myPage/userTeam";  //내보낼 뷰파일명 리턴
	}

}
