package com.finalp.moim.teampage.debate.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.teampage.debate.model.dao.TPdebateDao;


@Service("tpdebateService")
public class TPdebateServiceImpl implements TPdebateService{
	
	@Autowired
	private TPdebateDao tpdebatedao;
	
	
	
}
