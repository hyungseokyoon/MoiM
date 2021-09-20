package com.finalp.moim.teampage;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.finalp.moim.teampage.common.model.service.TPmainService;
import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;
import com.finalp.moim.teampage.daily.model.service.TPteamdailyService;
import com.finalp.moim.teampage.daily.model.vo.TeamDaily;
import com.finalp.moim.teampage.file.model.service.FileService;
import com.finalp.moim.teampage.file.model.vo.TFile;
import com.finalp.moim.teampage.teamboard.model.service.TPteamboardService;
import com.finalp.moim.teampage.teamboard.model.vo.TeamBoard;
import com.finalp.moim.teampage.teammanage.model.service.TPmanageService;
import com.finalp.moim.userinfo.model.vo.UserInfo;

@Controller
public class TPmainController {
	private static final Logger logger = LoggerFactory.getLogger(TPmainController.class);
	
	@Autowired
	private TPmanageService tpmanageService;
	
	@Autowired
	private TPteamboardService tpboardService;
	
	@Autowired
	private TPmainService tpmainService;
	
	@Autowired
	private TPteamdailyService tpteamdailyService;
	
	@Autowired
	private FileService fileService;

	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPindex.do")
	public String moveTPMainPage(Model model, HttpSession session, SessionStatus status,
			@RequestParam("team_num") int team_num, @RequestParam("leaderok") String team_leader) {
		Team team = tpmanageService.selectTeamSetting(team_num);
		ArrayList<TeamBoard> boardtoplist = tpboardService.selectBoardTopList(team_num);
		ArrayList<TFile> filerecentlist = fileService.selectFileRecentList(team_num);
		ArrayList<TeamDaily> tdlist = tpteamdailyService.selectTeamDailyList(team_num);
		
		int inprogress = 0;
		int planned = 0;
		int complete = 0;
		
		if(tdlist != null) {
			
			for(TeamDaily td : tdlist) {
				if(td.getDaily_progress() == 1) {
					planned += 1;
				}else if(td.getDaily_progress() == 2) {
					inprogress += 1;
				}else {
					complete += 1;
				}
			}
		}
		
		if (team != null) {
			session.setAttribute("team_num", team_num);
			session.setAttribute("team_leader", team_leader);
			status.setComplete();
			model.addAttribute("team", team);
			model.addAttribute("boardtoplist", boardtoplist);
			model.addAttribute("filerecentlist", filerecentlist);
			model.addAttribute("planned", planned);
			model.addAttribute("inprogress", inprogress);
			model.addAttribute("complete", complete);
			return "teampage/TPindex";
		} else {
			model.addAttribute("message", team + "팀 정보 조회 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping("moveMyTeamList.do")
	public String moveMTlistMethod(HttpSession session, SessionStatus status, Model model) {
		
		UserInfo userinfo = (UserInfo) session.getAttribute("loginMember");
		ArrayList<TeamMember> myteamlist = tpmainService.selectMyTeamList(userinfo.getUser_no());
		
		model.addAttribute("myteamlist", myteamlist);
		
		return "common/myteamlist";
	}
	
	@RequestMapping("exitTeampage.do")
	public String exitTeamPageMEthod(HttpSession session, SessionStatus status, Model model) {
		
		session.removeAttribute("team_num");
		session.removeAttribute("team_leader");
		
		return "redirect:main.do";
	}
}
