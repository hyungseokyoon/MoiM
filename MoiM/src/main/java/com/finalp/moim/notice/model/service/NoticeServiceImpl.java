package com.finalp.moim.notice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.notice.dao.NoticeDao;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	// DI
	@Autowired
	private NoticeDao noticeDao;
	
	public NoticeServiceImpl() {}
}
