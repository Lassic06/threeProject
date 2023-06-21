package co.micol.mp.review.service;

import java.util.List;

public interface ReviewService {
	int insertReview(ReviewVO vo);
	List<ReviewVO> reviewList(String string);
	int deleteReview(ReviewVO vo);
	
}
