package com.finalp.moim.recruit.model.service;

import java.util.ArrayList;

import com.finalp.moim.common.Page;
import com.finalp.moim.recruit.model.vo.Recruit;

public interface RecruitService {
	ArrayList<Recruit> selectList(Page page);
	int selectListCount();
	
}
