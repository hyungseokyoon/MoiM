package com.finalp.moim.teampage.teammanage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.teampage.model.vo.Team;

@Repository("teamDao")
public class TPmanageDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public Team selectTeamSetting(int team_num) {
		return session.selectOne("teamMapper.selectTeamSetting", team_num);
	}

	public int updateTeamSetting(Team team) {
		return session.update("teamMapper.updateTeamSetting", team);
	}

}
