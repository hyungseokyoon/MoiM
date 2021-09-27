package com.finalp.moim.teampage.debate.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalp.moim.teampage.debate.model.service.TPdebateService;

@Controller
public class TPdebateController {
	private static final Logger logger = LoggerFactory.getLogger(TPdebateController.class);
	
	@Autowired
	private TPdebateService tpdebateService;
	
	@RequestMapping("moveDebate.do")
	public String moveDebatePage() {
		return "teampage/debate/debate";
	}

}
