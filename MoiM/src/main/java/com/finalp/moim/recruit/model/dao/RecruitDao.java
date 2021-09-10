package com.finalp.moim.recruit.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.common.Page;
import com.finalp.moim.recruit.model.vo.Recruit;

@Repository("recruitDao")
public class RecruitDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public RecruitDao() {}
	
	public ArrayList<Recruit> selectList(Page page) {
		List<Recruit> list = sqlSession.selectList("recruitMapper.selectList", page);
		return (ArrayList<Recruit>)list;
	}
	
	public int selectListCount() {
		return sqlSession.selectOne("recruitMapper.selectListCount");
	}
	
	
	
}
