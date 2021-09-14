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
		return session.selectOne("teammanageMapper.selectTeamSetting", team_num);
	}

	public int updateTeamSetting(Team team) {
		return session.update("teammanageMapper.updateTeamSetting", team);
	}

	public ArrayList<JoinWaiting> selectJoinMemberList(int team_num) {
		List<JoinWaiting> list = session.selectList("teammanageMapper.selectJoinMemberList", team_num);
		return (ArrayList<JoinWaiting>)list;
	}

	public ArrayList<TeamMember> selectTeamMemberList(int team_num) {
		List<TeamMember> list = session.selectList("teammanageMapper.selectTeamMemberList", team_num);
		return (ArrayList<TeamMember>)list;
	}

	public JoinWaiting selectJoinMember(int join_num) {
		return session.selectOne("teammanageMapper.selectJoinMember", join_num);
	}

	public int insertTeamMember(JoinWaiting joinwaiting) {
		return session.insert("teammanageMapper.insertTeamMember", joinwaiting);
	}

	public int deleteJoinMember(int join_num) {
		return session.delete("teammanageMapper.deleteJoinMember", join_num);
	}

	public TeamMember selectTeamMember(int team_member_no) {
		return session.selectOne("teammanageMapper.selectTeamMember", team_member_no);
	}

}
