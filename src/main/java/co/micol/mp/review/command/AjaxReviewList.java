package co.micol.mp.review.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.micol.mp.common.Command;
import co.micol.mp.review.service.ReviewService;
import co.micol.mp.review.service.ReviewVO;
import co.micol.mp.review.serviceImpl.ReviewServiceImpl;

public class AjaxReviewList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String str = "Ajax:";
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> list ;
		String productId= request.getParameter("productId");
		
		list = rs.reviewList(productId);
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str += mapper.writeValueAsString(list);
		} catch (JacksonException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return str;
	}

}
