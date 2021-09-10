package com.finalp.moim.review.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalp.moim.review.model.dao.ReviewDao;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDao reviewDao;
}
