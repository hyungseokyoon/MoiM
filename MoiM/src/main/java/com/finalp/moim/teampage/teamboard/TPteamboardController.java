package com.finalp.moim.teampage.teamboard;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TPteamboardController {
	private static final Logger logger = LoggerFactory.getLogger(TPteamboardController.class);

	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPteamboard.do")
	public String moveTPTeamboardPage() {
		return "teampage/teamboard/tp_teamboard";
	}
}
