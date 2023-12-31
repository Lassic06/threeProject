package co.micol.mp.review.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.common.DataSource;
import co.micol.mp.review.service.ReviewMapper;
import co.micol.mp.review.service.ReviewService;
import co.micol.mp.review.service.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	@Override
	public int insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.insertReview(vo);
	}
	@Override
	public List<ReviewVO> reviewList(String string) {
		// TODO Auto-generated method stub
		return map.reviewList(string);
	}
	@Override
	public int deleteReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.deleteReview(vo);
	}

	

}
