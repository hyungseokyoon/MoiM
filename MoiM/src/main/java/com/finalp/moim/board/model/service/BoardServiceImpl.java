package com.finalp.moim.board.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.board.dao.BoardDao;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	// DI
	@Autowired
	private BoardDao boardDao;
	
	public BoardServiceImpl() {}
}
