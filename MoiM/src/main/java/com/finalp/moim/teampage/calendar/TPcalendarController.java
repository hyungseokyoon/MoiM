package com.finalp.moim.teampage.calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TPcalendarController {
	private static final Logger logger = LoggerFactory.getLogger(TPcalendarController.class);

	// 뷰 페이지 이동 처리용 -------------------------------
	@RequestMapping("moveTPcalendar.do")
	public String moveTPCalendarPage() {
		return "teampage/calendar/tp_calendar";
	}

}
