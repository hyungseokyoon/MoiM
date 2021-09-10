package com.finalp.moim.recruit.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.common.Page;
import com.finalp.moim.recruit.model.dao.RecruitDao;
import com.finalp.moim.recruit.model.vo.Recruit;

@Service("recruitService")
public class RecruitServiceImpl implements RecruitService{

	@Autowired
	RecruitDao recruitDao;
	
	@Override
	public ArrayList<Recruit> selectList(Page page){
		return recruitDao.selectList(page);
	}
	
	@Override
	public int selectListCount() {
		return recruitDao.selectListCount();
	}
	
	@Override
	public Recruit selectOne(int team_num) {
		return recruitDao.selectOne(team_num);
	}
}
