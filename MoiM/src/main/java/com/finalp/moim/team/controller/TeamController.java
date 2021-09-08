package com.finalp.moim.team.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.team.model.service.TeamService;

@Controller
public class TeamController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(TeamController.class);
	
	// DI
	@Autowired
	private TeamService teamService;
	
	// 관리자가 모임 관리 페이지로 넘어갈 때 사용하는 메소드
	@RequestMapping("teamlistadmin.do")
	public String adminTeamListMethod() {
		return "admin/AdminTeamList";
	}
}
