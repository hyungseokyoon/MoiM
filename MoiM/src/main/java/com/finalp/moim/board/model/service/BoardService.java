package com.finalp.moim.board.model.service;

import java.util.ArrayList;

import com.finalp.moim.board.model.vo.Board;
import com.finalp.moim.common.Page;

public interface BoardService {
	int selectListCount();
	ArrayList<Board> selectList(Page page);
	int updateReadCount(int board_no);
	Board selectBoard(int board_no);
}
