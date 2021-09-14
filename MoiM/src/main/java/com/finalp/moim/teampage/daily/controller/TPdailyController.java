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
		
		if(tdlist != null) {
			for(TeamDaily td : tdlist) {
				System.out.print(td.toString());
			}
			int tdlistlength = tdlist.size();
			model.addAttribute("tdlistlength", tdlistlength);
			model.addAttribute("tdlist", tdlist);
			return "teampage/daily/tp_daily";
		}else {
			model.addAttribute("message", team_num + "팀 일지 목록 조회 실패");
		}
		return "teampage/daily/tp_daily";
	}
}
