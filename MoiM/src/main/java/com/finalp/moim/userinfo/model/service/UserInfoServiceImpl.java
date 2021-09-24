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
	public int insertUserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUserInfo(String userid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<UserInfo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserInfo selectUserInfo(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateLoginOk(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<UserInfo> selectSearchUserid(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<UserInfo> selectSearchGender(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<UserInfo> selectSearchAge(int age) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<UserInfo> selectSearchLoginOK(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectCheckId(String userid) {
		return userinfoDao.selectCheckId(userid);
	}
	
	@Override
	public int selectCheckNn(String usernn) {
		return userinfoDao.selectCheckNn(usernn);
	}

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserInfo selectUser(int user_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateUserLoginOK(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUserAdmin(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<UserInfo> selectUserSearch(int category_no, String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<UserInfo> selectUserList() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

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
	};
>>>>>>> branch 'master' of https://github.com/hyungseokyoon/MoiM.git
}
