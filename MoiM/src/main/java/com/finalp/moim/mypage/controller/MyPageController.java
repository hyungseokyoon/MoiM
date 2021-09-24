package com.finalp.moim.mypage.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.mypage.model.service.MyPageService;
import com.finalp.moim.mypage.model.vo.MyPage;
import com.finalp.moim.userinfo.model.service.UserInfoService;
import com.finalp.moim.userinfo.model.vo.UserInfo;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	// DI
	@Autowired
	private UserInfoService userinfoService;
	
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
	public String userPostForward() {
		return "myPage/userPost";  //내보낼 뷰파일명 리턴
	}
	// 내 팀 보기
	@RequestMapping("uteam.do")
	public String userTeamForward() {
		return "myPage/userTeam";  //내보낼 뷰파일명 리턴
	}

}
