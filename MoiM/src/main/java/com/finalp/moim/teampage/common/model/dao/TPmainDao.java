package com.finalp.moim.teampage.common.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.teampage.common.model.vo.TeamMember;

@Repository("tpmainDao")
public class TPmainDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public ArrayList<TeamMember> selectMyTeamList(int user_no) {
		List<TeamMember> myteamlist = session.selectList("tpmainMapper.selectMyTeamList", user_no);
		return (ArrayList<TeamMember>)myteamlist;
	}
	
}
