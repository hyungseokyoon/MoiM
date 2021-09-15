package com.finalp.moim.userinfo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.finalp.moim.userinfo.model.service.UserInfoService;
import com.finalp.moim.userinfo.model.vo.UserInfo;

@Controller
public class UserInfoController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
	// DI
	@Autowired
	private UserInfoService userinfoService;
	
	// 로그인
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	public String loginMethod(UserInfo userInfo, HttpSession session, 
			SessionStatus status, Model model) {
		UserInfo loginMember = userinfoService.selectLogin(userInfo);
		
		if(loginMember != null && userInfo.getUser_pwd().equals(loginMember.getUser_pwd()) && loginMember.getLogin_ok().equals("Y")) {
			session.setAttribute("loginMember", loginMember);
			status.setComplete();
			
			return "common/main";
		} else {
			model.addAttribute("message", "로그인 실패!");
			
			return "common/error";
		}
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			session.invalidate();
			
			return "common/main";
		} else {
			model.addAttribute("message", "로그인 세션이 존재하지 않습니다.");
			
			return "common/error";
		}
	}
}
