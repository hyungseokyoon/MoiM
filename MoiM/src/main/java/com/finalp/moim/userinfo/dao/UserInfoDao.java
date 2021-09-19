package com.finalp.moim.userinfo.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.userinfo.model.vo.UserInfo;

@Repository("userinfoDao")
public class UserInfoDao {
	// root-context.xml
	@Autowired
	private SqlSessionTemplate session;
	
	public UserInfoDao() {}

	public UserInfo selectLogin(UserInfo userInfo) {
		return session.selectOne("userinfoMapper.selectLogin", userInfo);
	}

	public ArrayList<UserInfo> selectUserList() {
		List<UserInfo> list = session.selectList("userinfoMapper.selectUserList");
		return (ArrayList<UserInfo>) list;
	}

	public int selectListCount() {
		return session.selectOne("userinfoMapper.getListCount");
	}

	public UserInfo selectUser(int user_no) {
		return session.selectOne("userinfoMapper.selectUser", user_no);
	}

	public int updateUserLoginOK(UserInfo userInfo) {
		return session.update("userinfoMapper.updateUserLoginOK", userInfo);
	}

	public int updateUserAdmin(UserInfo userInfo) {
		return session.update("userinfoMapper.updateUserAdmin", userInfo);
	};
}
