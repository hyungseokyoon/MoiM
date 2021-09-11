package com.finalp.moim.file.model.service;

import java.util.ArrayList;

import com.finalp.moim.file.model.vo.TFile;


public interface FileService {
	ArrayList<TFile> selectAll();
	TFile selectFile(int file_num);
	int insertFile(TFile tfile);
	int updateFile(TFile tfile);
	int deleteFile(TFile tfile);
}
