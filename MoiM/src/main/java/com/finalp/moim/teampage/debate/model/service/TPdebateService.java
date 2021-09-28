package com.finalp.moim.teampage.debate.model.service;

import java.util.ArrayList;

import com.finalp.moim.teampage.debate.model.vo.Debate;

public interface TPdebateService {

	ArrayList<Debate> selectAll(int team_num);

}
