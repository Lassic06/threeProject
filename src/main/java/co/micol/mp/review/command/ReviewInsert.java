package co.micol.mp.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.common.Command;
import co.micol.mp.review.service.ReviewService;
import co.micol.mp.review.service.ReviewVO;
import co.micol.mp.review.serviceImpl.ReviewServiceImpl;

public class ReviewInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ReviewService rs = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		vo.setReviewSubject((request.getParameter("reviewSubject")).replaceAll("\r\n", "<br/>"));
		vo.setMemberId((String) session.getAttribute("id"));
		vo.setProductId(request.getParameter("productId"));
		rs.insertReview(vo);
		
		return "product/productForm";
	}

}
