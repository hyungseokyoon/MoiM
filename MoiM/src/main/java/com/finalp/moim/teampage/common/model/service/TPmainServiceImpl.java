package com.finalp.moim.teampage.common.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.teampage.common.model.dao.TPmainDao;
import com.finalp.moim.teampage.common.model.vo.TeamMember;

@Service("tpmainService")
public class TPmainServiceImpl implements TPmainService{
	
	@Autowired
	private TPmainDao tpmainDao;
	
	@Override
	public ArrayList<TeamMember> selectMyTeamList(int user_no) {
		return tpmainDao.selectMyTeamList(user_no);
	}
	
}
