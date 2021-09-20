package com.finalp.moim.teampage.common.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.teampage.common.model.vo.Alert;
import com.finalp.moim.teampage.common.model.vo.TeamMember;

@Repository("tpmainDao")
public class TPmainDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public ArrayList<TeamMember> selectMyTeamList(int user_no) {
		List<TeamMember> myteamlist = session.selectList("tpmainMapper.selectMyTeamList", user_no);
		return (ArrayList<TeamMember>)myteamlist;
	}

	public int insertAlertTSUpdate(TeamMember tm) {
		return session.insert("tpmainMapper.insertAlertTSUpdate", tm);
	}

	public ArrayList<Alert> selectAlertList(int team_member_no) {
		List<Alert> list = session.selectList("tpmainMapper.selectAlertList", team_member_no);
		return (ArrayList<Alert>)list;
	}

	public int deleteAlertOne(int alert_num) {
		return session.delete("tpmainMapper.deleteAlertOne", alert_num);
	}

	public int deleteAlertAll(int team_member_no) {
		return session.delete("tpmainMapper.deleteAlertAll", team_member_no);
	}

	public int deleteTeamMember(TeamMember teammember) {
		return session.delete("tpmainMapper.deleteTeamMember", teammember);
	}

	public int insertAlertTBInsert(TeamMember teammember) {
		return session.insert("tpmainMapper.insertAlertTBInsert", teammember);
	}
	
}
