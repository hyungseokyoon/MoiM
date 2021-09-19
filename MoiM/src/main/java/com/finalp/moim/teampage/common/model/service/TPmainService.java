package com.finalp.moim.teampage.common.model.service;

import java.util.ArrayList;

import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;

public interface TPmainService {
	ArrayList<TeamMember> selectMyTeamList(int user_no);
}
