package com.finalp.moim.file.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalp.moim.file.model.vo.TFile;


@Repository("fileDao")
public class FileDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public FileDao() {}
	
	public ArrayList<TFile> selectList(){
		List<TFile> list = sqlSession.selectList(
				"fileMapper.selectAll");
		return (ArrayList<TFile>)list;
	}

	public int insertFile(TFile tfile) {
		return sqlSession.insert("fileMapper.insertFile", tfile);
	}

	public TFile selectOne(int file_num) {
		return sqlSession.selectOne(
				"fileMapper.selectFile", file_num);
	}

}