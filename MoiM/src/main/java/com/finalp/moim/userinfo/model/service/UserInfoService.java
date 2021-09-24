package com.finalp.moim.userinfo.model.service;

import java.util.ArrayList;

import com.finalp.moim.userinfo.model.vo.UserInfo;

public interface UserInfoService {
	UserInfo selectLogin(UserInfo userInfo);
	ArrayList<UserInfo> selectUserList();
	int selectListCount();
	UserInfo selectUser(int user_no);
	int updateUserLoginOK(UserInfo userInfo);
	int updateUserAdmin(UserInfo userInfo);
	ArrayList<UserInfo> selectUserSearch(int category_no, String keyword);
	int deleteUserAdmin(int user_no);
}
