package com.finalp.moim.userinfo.model.service;

import java.util.ArrayList;

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
	}

	@Override
	public ArrayList<UserInfo> selectUserList() {
		return userinfoDao.selectUserList();
	}

	@Override
	public int selectListCount() {
		return userinfoDao.selectListCount();
	}

	@Override
	public UserInfo selectUser(int user_no) {
		return userinfoDao.selectUser(user_no);
	}

	@Override
	public int updateUserLoginOK(UserInfo userInfo) {
		return userinfoDao.updateUserLoginOK(userInfo);
	}

	@Override
	public int updateUserAdmin(UserInfo userInfo) {
		return userinfoDao.updateUserAdmin(userInfo);
	}

	@Override
	public ArrayList<UserInfo> selectUserSearch(int category_no, String keyword) {
		return userinfoDao.selectUserSearch(category_no, keyword);
	}

	@Override
	public int deleteUserAdmin(int user_no) {
		return userinfoDao.deleteUserAdmin(user_no);
	};
}
