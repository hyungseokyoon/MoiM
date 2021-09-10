package com.finalp.moim.teampage.teammanage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.teampage.common.model.vo.JoinWaiting;
import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;
import com.finalp.moim.teampage.teammanage.model.dao.TPmanageDao;

@Service("TeamService")
public class TPmanageServiceImpl implements TPmanageService {
	
	@Autowired
	private TPmanageDao tpmanageDao;

	@Override
	public Team selectTeamSetting(int team_num) {
		return tpmanageDao.selectTeamSetting(team_num);
	}

	@Override
	public int updateTeamSetting(Team team) {
		return tpmanageDao.updateTeamSetting(team);
	}

	@Override
	public JoinWaiting selectJoinMember(int join_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TeamMember selectTeamMember(int team_member_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<JoinWaiting> selectJoinMemberList(int team_num) {
		return tpmanageDao.selectJoinMemberList(team_num);
	}

	@Override
	public ArrayList<TeamMember> selectTeamMemberList(int team_num) {
		return tpmanageDao.selectTeamMemberList(team_num);
	}

	@Override
	public int insertTeamMember(TeamMember teamMember) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteJoinMember(int join_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTeamMemberRank(TeamMember teamMember) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteTeamMember(int team_member_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
