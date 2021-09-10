package com.finalp.moim.teampage.daily;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TPdailyController {
	private static final Logger logger = LoggerFactory.getLogger(TPdailyController.class);

	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPdaily.do")
	public String moveTPDailyPage() {
		return "teampage/daily/tp_daily";
	}
}
