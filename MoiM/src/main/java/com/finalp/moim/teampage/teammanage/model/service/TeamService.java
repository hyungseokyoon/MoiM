package com.finalp.moim.teampage.teammanage.model.service;

import java.util.ArrayList;

import com.finalp.moim.teampage.common.model.vo.JoinWaiting;
import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;

public interface TeamService {

	Team selectTeamSetting(int team_num);
	int updateTeamSetting(Team team);
	JoinWaiting selectJoinMember(int join_num);
	TeamMember selectTeamMember(int team_member_no);
	ArrayList<JoinWaiting> selectJoinMemberList(int team_num);
	ArrayList<TeamMember> selectTeamMemberList(int team_num);
	int insertTeamMember(TeamMember teamMember);
	int deleteJoinMember(int join_num);
	int updateTeamMemberRank(TeamMember teamMember);
	int deleteTeamMember(int team_member_no);

}
