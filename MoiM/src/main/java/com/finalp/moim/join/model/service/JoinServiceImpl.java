package com.finalp.moim.join.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.join.model.dao.JoinDao;
import com.finalp.moim.join.model.vo.Join;

@Service("joinService")
public class JoinServiceImpl implements JoinService {

	@Autowired
	JoinDao joinDao;
	
	@Override
	public int insertJoin(Join join) {
		return joinDao.insertJoin(join);
	}
}
