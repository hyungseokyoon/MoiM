package com.finalp.moim.userinfo.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.servlet.ModelAndView;

import com.finalp.moim.common.Page;
import com.finalp.moim.userinfo.model.service.UserInfoService;
import com.finalp.moim.userinfo.model.vo.UserInfo;

@Controller
public class UserInfoController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
	// DI
	@Autowired
	private UserInfoService userinfoService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
	// 로그인
	@RequestMapping(value="login.do", method = RequestMethod.POST)
	public String loginMethod(UserInfo userInfo, String currentUrl, HttpSession session, 
			SessionStatus status, Model model) {
		UserInfo loginMember = userinfoService.selectLogin(userInfo);
		
		if(loginMember != null && bcryptPasswordEncoder.matches(userInfo.getUser_pwd(), loginMember.getUser_pwd())
				&& loginMember.getLogin_ok().equals("Y")) {
			session.setAttribute("loginMember", loginMember);
			status.setComplete();
			
			return "redirect:" + currentUrl;
		} else {
			model.addAttribute("message", "로그인 실패!");
			
			return "redirect:" + currentUrl;
		}
	}
	
	//아이디 중복체크 확인을 위한 ajax 요청 처리용 메소드
		@RequestMapping(value="idchk.do", method=RequestMethod.POST)
		public void idCheckMethod(
				@RequestParam("userid") String userid, 
				HttpServletResponse response) throws IOException {
			//String userid = request.getParameter("userid");
				
			System.out.println(userid);
			int idcount = userinfoService.selectCheckId(userid);
				
			String returnValue = null;
			if(idcount == 0) {
				returnValue = "ok";
			}else {
				returnValue = "dup";
			}
				
			//response 를 이용해서 클라이언트로 출력스트림 만들고
			//값 보내기
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append(returnValue);
			out.flush();
			out.close();
		}
		
		//닉네임 중복체크 확인을 위한 ajax 요청 처리용 메소드
		@RequestMapping(value="nnchk.do", method=RequestMethod.POST)
		public void nnCheckMethod(
				@RequestParam("usernn") String usernn, 
				HttpServletResponse response) throws IOException {
			//String usernn = request.getParameter("usernn");
				
			int nncount = userinfoService.selectCheckNn(usernn);
				
			String returnValue = null;
			if(nncount == 0) {
				returnValue = "ok";
			}else {
				returnValue = "dup";
			}
				
			//response 를 이용해서 클라이언트로 출력스트림 만들고
			//값 보내기
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append(returnValue);
			out.flush();
			out.close();
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
	
	//회원가입
	@RequestMapping("enrollPage.do")
	public String moveEnrollPage() {
		return "loginPage/enrollPage";
	}	
		
	@RequestMapping(value="enroll.do", method=RequestMethod.POST)
	public String moveUserInsert(UserInfo userInfo, Model model) {
		logger.info("enroll.do : " + userInfo);
		
		
		//패스워드 암호화 처리
		userInfo.setUser_pwd(bcryptPasswordEncoder.encode(userInfo.getUser_pwd()));
				
			if(userinfoService.insertUserInfo(userInfo) > 0) {
					return "common/main";  
			}else {
				model.addAttribute("message", "회원 가입 실패!");
				return "common/error";
			}		
	}
	//아이디 찾기
	@RequestMapping("sid.do")
	public String moveSearchId() {
		return "loginPage/searchId"; 
	}
	//비밀번호 찾기
	@RequestMapping("spw.do")
	public String moveSearchPassword() {
		return "loginPage/searchPassword";
	}
	//아이디 찾기 결과
	@RequestMapping("rid.do")
	public String moveResultId() {
		return "loginPage/resultId";
	}
	//비밀번호 재설정
	@RequestMapping("rpw.do")
	public String moveResultPassword() {
		return "loginPage/resultPassword";
	}
	// 관리자 페이지 - 회원관리 페이지로 이동
		@RequestMapping("ulistadmin.do")
		public ModelAndView adminUerListMethod(ModelAndView mv, @RequestParam(name="page", required=false) String page) {
			int currentPage = 1;
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			int limit = 10;
			int listCount = userinfoService.selectListCount();
			
			int maxPage = (int)((double)listCount / limit + 0.9);
			int startPage = (int)((double)currentPage / limit + 0.9);
			int endPage = startPage + 10 - 1;
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			Page paging = new Page(startRow, endRow);
			
			ArrayList<UserInfo> list = userinfoService.selectUserList();
			
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
				
				mv.setViewName("admin/AdminUserList");
			} else {
				mv.addObject("message", currentPage + "회원 정보 목록 조회 실패!");
				
				mv.setViewName("common/error");
			}
			
			return mv;
		}
		
		// 관리자 페이지 - 회원 로그인 가능 여부 변경
		@RequestMapping("loginOKadmin.do")
		public ModelAndView userLoginOKMethod(ModelAndView mv, @RequestParam("user_no") int user_no, 
				@RequestParam("page") int currentPage, @RequestParam("login_ok") String login_ok) {
			UserInfo userInfo = userinfoService.selectUser(user_no);
			
			userInfo.setLogin_ok(login_ok);
			
			if(userinfoService.updateUserLoginOK(userInfo) > 0) {
				mv.addObject("page", currentPage);
				
				mv.setViewName("redirect:ulistadmin.do");
			} else {
				mv.addObject("message", user_no + "번 회원 로그인 가능 여부 변경 실패");
				
				mv.setViewName("common/error");
			}
			
			return mv;
		}
		
		// 관리자 페이지 - 회원 관리자 여부 변경
		@RequestMapping("userchangeadmin.do")
		public ModelAndView userAdminChangeMethod(ModelAndView mv, @RequestParam("user_no") int user_no, 
				@RequestParam("page") int currentPage, @RequestParam("admin") String admin) {
			UserInfo userInfo = userinfoService.selectUser(user_no);
			
			userInfo.setAdmin(admin);
			
			if(userinfoService.updateUserAdmin(userInfo) > 0) {
				mv.addObject("page", currentPage);
				
				mv.setViewName("redirect:ulistadmin.do");
			} else {
				mv.addObject("message", user_no + "번 회원 관리자 권한 부여 실패");
				
				mv.setViewName("common/error");
			}
			
			return mv;
		}
		
		// 관리자 페이지 - 회원 정보 검색
		@RequestMapping(value = "usearch.do", method = RequestMethod.POST)
		public ModelAndView userSearchMethod(ModelAndView mv, @RequestParam("category_no") int category_no,
				@RequestParam("keyword") String keyword, @RequestParam(name="page", required=false) String page) {
			int currentPage = 1;
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			int limit = 10;
			int listCount = userinfoService.selectListCount();
			
			int maxPage = (int)((double)listCount / limit + 0.9);
			int startPage = (int)((double)currentPage / limit + 0.9);
			int endPage = startPage + 10 - 1;
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			Page paging = new Page(startRow, endRow);
			
			ArrayList<UserInfo> list = userinfoService.selectUserSearch(category_no, keyword);
			
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
				
				mv.setViewName("admin/AdminUserList");
			} else {
				mv.addObject("message", currentPage + "회원 정보 목록 조회 실패!");
				
				mv.setViewName("common/error");
			}
			
			return mv;
		}
		// -----------------------------------------
	


	
}
