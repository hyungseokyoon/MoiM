package com.finalp.moim.teampage.debate.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.teampage.debate.model.service.TPdebateService;
import com.finalp.moim.teampage.debate.model.vo.Debate;

@Controller
public class TPdebateController {
	private static final Logger logger = LoggerFactory.getLogger(TPdebateController.class);
	
	@Autowired
	private TPdebateService tpdebateService;
	
	@RequestMapping("moveDebate.do")
	public String moveDebatePage(Model model, HttpSession session) {
		int team_num = (int)session.getAttribute("team_num");
		ArrayList<Debate> list = tpdebateService.selectAll(team_num);
		
		
		if (list.size() > 0) {
			model.addAttribute("list", list);
			return "teampage/debate/debate";
		} else {
			model.addAttribute("message", "등록된 정보가 없습니다.");
			return "common/error";
		}
	}

}
