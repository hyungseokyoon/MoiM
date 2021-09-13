package com.finalp.moim.userinfo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.finalp.moim.userinfo.model.service.UserInfoService;

@Controller
public class UserInfoController {
	// Logger
	private static final Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
	// DI
	@Autowired
	private UserInfoService userinfoService;
}
