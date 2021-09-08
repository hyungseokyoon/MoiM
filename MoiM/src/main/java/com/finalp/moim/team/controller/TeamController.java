package com.finalp.moim.team.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeamController {
	
	private static final Logger logger = LoggerFactory.getLogger(TeamController.class);
	
	@RequestMapping("moveTeamSetting.do")
	public String moveTeamSetting() {
		return "teampage/teammanage/team_setting";  //내보낼 뷰파일명 리턴
	}
	
	@RequestMapping("moveTeamMember.do")
	public String moveTeamMember() {
		return "teampage/teammanage/team_member";  //내보낼 뷰파일명 리턴
	}

}
