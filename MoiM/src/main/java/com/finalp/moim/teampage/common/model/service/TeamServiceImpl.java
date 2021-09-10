package com.finalp.moim.team.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.team.model.dao.TeamDao;

@Service("teamService")
public class TeamServiceImpl implements TeamService {
	// DI
	@Autowired
	private TeamDao teamDao;
	
	public TeamServiceImpl() {}
}
