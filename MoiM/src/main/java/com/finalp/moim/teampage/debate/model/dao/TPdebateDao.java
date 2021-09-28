package com.finalp.moim.teampage.debate.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.teampage.debate.model.vo.Debate;

@Repository("tpdebateDao")
public class TPdebateDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public TPdebateDao() {}

	public ArrayList<Debate> selectList(int team_num) {
		List<Debate> list = sqlSession.selectList(
				"debateMapper.selectAll", team_num);
		return (ArrayList<Debate>)list;
	}
	
	
}
