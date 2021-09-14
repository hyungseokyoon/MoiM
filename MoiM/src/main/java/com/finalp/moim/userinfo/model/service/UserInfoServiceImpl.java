package com.finalp.moim.userinfo.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.userinfo.dao.UserInfoDao;
import com.finalp.moim.userinfo.model.vo.UserInfo;

@Service("userinfoService")
public class UserInfoServiceImpl implements UserInfoService {
	// DI
	@Autowired
	private UserInfoDao userinfoDao;
	
	public UserInfoServiceImpl() {}

	@Override
	public UserInfo selectLogin(UserInfo userInfo) {
		return userinfoDao.selectLogin(userInfo);
	};
}
