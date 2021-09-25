package com.finalp.moim.mypage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.finalp.moim.teampage.common.model.service.TPmainService;
import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;
import com.finalp.moim.teampage.teammanage.model.service.TPmanageService;
import com.finalp.moim.userinfo.model.service.UserInfoService;
import com.finalp.moim.userinfo.model.vo.UserInfo;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	// DI
	@Autowired
	private UserInfoService userinfoService;
	
	@Autowired
	private TPmainService tpmainService;
	
	@Autowired
	private TPmanageService tpmanageService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 마이페이지 회원확인
	@RequestMapping("mypage.do")
	public String myPageForward(/*
			@RequestParam("userid") String userid, 
			ModelAndView mv, Object userinfoService*/) {
		
/*		UserInfo userInfo = userinfoService.selectUserInfo(userid);*/
		return "myPage/myPage";  //내보낼 뷰파일명 리턴
	}
	
	// 내 정보 보기
	@RequestMapping(value="uinfo.do", method=RequestMethod.POST)
	public String userInfoForward(@RequestParam("user_pwd") String user_pwd, HttpSession session, Model model) {
		String ogpwd = ((UserInfo)session.getAttribute("loginMember")).getUser_pwd();
		System.out.println(bcryptPasswordEncoder.matches(user_pwd, ogpwd));
		System.out.println(ogpwd);
		if(bcryptPasswordEncoder.matches(user_pwd, ogpwd)) {
			return "myPage/userInfo";  //내보낼 뷰파일명 리턴
		}else {
			model.addAttribute("message", "비밀번호가 정확하지 않습니다");
			return "common/error";
		}
		
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
	public String userTeamForward(HttpSession session, SessionStatus status, Model model) {
		
		UserInfo userinfo = (UserInfo) session.getAttribute("loginMember");
		ArrayList<TeamMember> myteamlist = tpmainService.selectMyTeamList(userinfo.getUser_no());
		int mtlistlength = myteamlist.size();
		ArrayList<Team> teamsettinglist = new ArrayList<Team>();
		for(int i=0; i<mtlistlength; i++) {
			Team team = tpmanageService.selectTeamSetting(myteamlist.get(i).getTeam_num());
			teamsettinglist.add(team);
		}
		
		model.addAttribute("myteamlist", myteamlist);
		model.addAttribute("mtlistlength",mtlistlength);
		model.addAttribute("teamsettinglist",teamsettinglist);
		
		return "myPage/userTeam";  //내보낼 뷰파일명 리턴
	}

}
