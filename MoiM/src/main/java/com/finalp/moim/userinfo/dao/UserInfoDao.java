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
	}

	public ArrayList<UserInfo> selectUserSearch(int category_no, String keyword) {
		List<UserInfo> list = null;
		
		if(category_no == 1) {
			session.selectList("userinfoMapper.searchUserName", keyword);
		} else if(category_no == 2) {
			session.selectList("userinfoMapper.searchUserNickname", keyword);
		} else if(category_no == 3) {
			session.selectList("userinfoMapper.searchUserEmail", keyword);
		}

		return (ArrayList<UserInfo>) list;
	}

	public int deleteUserAdmin(int user_no) {
		return session.delete("userinfoMapper.deleteUserAdmin", user_no);
	};
	
	public int selectCheckId(String userid) {
		return session.selectOne("userinfoMapper.selectCheckId", userid);
	}
	public int selectCheckNn(String usernn) {
		return session.selectOne("userinfoMapper.selectCheckNn", usernn);
	}

	public int updateUserInfo(UserInfo userInfo) {
		return session.update("userinfoMapper.updateUserInfo", userInfo);
	}
}
