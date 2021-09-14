package com.finalp.moim.teampage.daily.model.service;

import java.util.ArrayList;

import com.finalp.moim.teampage.daily.model.vo.TeamDaily;

public interface TPteamdailyService {
	ArrayList<TeamDaily> selectTeamDailyList(int team_num);
}
