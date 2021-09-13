package com.finalp.moim.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.board.model.vo.Board;
import com.finalp.moim.common.Page;

@Repository("boardDao")
public class BoardDao {
	// root-context.xml
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public BoardDao() {}

	public int selectListCount() {
		return sqlSession.selectOne("boardMapper.getListCount");
	}

	public ArrayList<Board> selectList(Page page) {
		List<Board> list = sqlSession.selectList("boardMapper.selectList", page);
		return (ArrayList<Board>) list;
	}

	public int updateReadCount(int board_no) {
		return sqlSession.update("boardMapper.updateReadCount", board_no);
	}

	public Board selectBoard(int board_no) {
		return sqlSession.selectOne("boardMapper.selectBoard", board_no);
	}
}
