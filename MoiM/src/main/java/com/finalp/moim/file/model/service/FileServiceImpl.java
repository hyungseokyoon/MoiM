package com.finalp.moim.file.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.file.model.dao.FileDao;
import com.finalp.moim.file.model.vo.TFile;

@Service("fileService")
public class FileServiceImpl implements FileService{
	
	@Autowired
	private FileDao fileDao;

	@Override
	public ArrayList<TFile> selectAll() {
		return fileDao.selectList();
	}

	@Override
	public TFile selectFile(int file_num) {
		return fileDao.selectOne(file_num);
	}

	@Override
	public int insertFile(TFile tfile) {
		return fileDao.insertFile(tfile);
	}

	@Override
	public int updateFile(TFile tfile) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFile(int fnum) {
		// TODO Auto-generated method stub
		return 0;
	}

}
