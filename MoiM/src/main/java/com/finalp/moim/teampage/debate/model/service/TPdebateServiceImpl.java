package com.finalp.moim.teampage.debate.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.teampage.debate.model.dao.TPdebateDao;
import com.finalp.moim.teampage.debate.model.vo.Debate;


@Service("tpdebateService")
public class TPdebateServiceImpl implements TPdebateService{
	
	@Autowired
	private TPdebateDao tpdebatedao;

	@Override
	public ArrayList<Debate> selectAll(int team_num) {
		return tpdebatedao.selectList(team_num);
	}
	
	
	
}
