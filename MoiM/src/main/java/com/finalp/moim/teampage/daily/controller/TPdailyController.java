package com.finalp.moim.teampage.daily.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalp.moim.teampage.daily.model.service.TPteamdailyService;
import com.finalp.moim.teampage.daily.model.vo.TeamDaily;

@Controller
public class TPdailyController {
	private static final Logger logger = LoggerFactory.getLogger(TPdailyController.class);
	
	@Autowired
	private TPteamdailyService tpteamdailyService;
	
	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPdaily.do")
	public String moveTPDailyPage(@RequestParam("team_num") int team_num, Model model) {
		ArrayList<TeamDaily> tdlist = tpteamdailyService.selectTeamDailyList(team_num);
		return "teampage/daily/tp_daily";
	}
}
