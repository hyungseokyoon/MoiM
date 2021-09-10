package com.finalp.moim.teampage.teammanage.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.teampage.common.model.vo.JoinWaiting;
import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;

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

	public ArrayList<JoinWaiting> selectJoinMemberList(int team_num) {
		List<JoinWaiting> list = session.selectList("joinwaitingMapper.selectJoinMemberList", team_num);
		return (ArrayList<JoinWaiting>)list;
	}

	public ArrayList<TeamMember> selectTeamMemberList(int team_num) {
		List<TeamMember> list = session.selectList("teammemberMapper.selectTeamMemberList", team_num);
		return (ArrayList<TeamMember>)list;
	}

}
