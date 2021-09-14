package com.finalp.moim.teampage.daily.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.teampage.daily.model.dao.TPteamdailyDao;
import com.finalp.moim.teampage.daily.model.vo.TeamDaily;

@Service("teamdailyService")
public class TPteamdailyServiceImpl implements TPteamdailyService {
	
	@Autowired
	private TPteamdailyDao tpteamdailyDao;
	
	@Override
	public ArrayList<TeamDaily> selectTeamDailyList(int team_num) {
		return tpteamdailyDao.selectTeamDailyList(team_num);
	}
	
}
