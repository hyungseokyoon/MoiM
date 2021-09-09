package com.finalp.moim.teampage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.teampage.model.vo.Team;
import com.finalp.moim.teampage.teammanage.model.service.TeamService;

@Controller
public class TPmainController {
	private static final Logger logger = LoggerFactory.getLogger(TPmainController.class);
	
	@Autowired
	private TeamService teamService;

	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPindex.do")
	public String moveTPMainPage(Model model) {
		Team team = teamService.selectTeamSetting(1);
		
		if (team != null) {
			model.addAttribute("team", team);
			return "teampage/TPindex";
		} else {
			model.addAttribute("message", team + "팀 정보 조회 실패.");
			return "common/error";
		}
	}
}
