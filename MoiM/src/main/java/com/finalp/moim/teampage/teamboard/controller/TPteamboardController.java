package com.finalp.moim.teampage.teamboard.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalp.moim.teampage.teamboard.model.service.TPteamboardService;
import com.finalp.moim.teampage.teamboard.model.vo.TeamBoard;

@Controller
public class TPteamboardController {
	private static final Logger logger = LoggerFactory.getLogger(TPteamboardController.class);
	
	@Autowired
	private TPteamboardService tpteamboardService;
	
	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPteamboard.do")
	public String moveTPTeamboardPage(@RequestParam("team_num") int team_num, Model model) {
		ArrayList<TeamBoard> tblist = tpteamboardService.selectTeamBoardList(team_num);
		if (tblist != null) {	
			for(TeamBoard tb : tblist) {
				System.out.println(tb.toString());
			}
			model.addAttribute("tblist", tblist);
			return "teampage/teamboard/tp_teamboard";
		} else {
			model.addAttribute("message", team_num + "팀 공지 목록 조회 실패.");
			return "common/error";
		}
	}
}
