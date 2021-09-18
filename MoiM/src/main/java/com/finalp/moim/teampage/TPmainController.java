package com.finalp.moim.teampage;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.file.model.service.FileService;
import com.finalp.moim.teampage.file.model.vo.TFile;
import com.finalp.moim.teampage.teamboard.model.service.TPteamboardService;
import com.finalp.moim.teampage.teamboard.model.vo.TeamBoard;
import com.finalp.moim.teampage.teammanage.model.service.TPmanageService;

@Controller
public class TPmainController {
	private static final Logger logger = LoggerFactory.getLogger(TPmainController.class);
	
	@Autowired
	private TPmanageService tpmanageService;
	
	@Autowired
	private TPteamboardService tpboardService;
	
	@Autowired
	private FileService fileService;

	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPindex.do")
	public String moveTPMainPage(Model model) {
		Team team = tpmanageService.selectTeamSetting(1);
		ArrayList<TeamBoard> boardtoplist = tpboardService.selectBoardTopList(1);
		ArrayList<TFile> filerecentlist = fileService.selectFileRecentList(1);
		
		if (team != null) {
			model.addAttribute("team", team);
			model.addAttribute("team_num", team.getTeam_num());
			model.addAttribute("boardtoplist", boardtoplist);
			model.addAttribute("filerecentlist", filerecentlist);
			return "teampage/TPindex";
		} else {
			model.addAttribute("message", team + "팀 정보 조회 실패.");
			return "common/error";
		}
	}
}
