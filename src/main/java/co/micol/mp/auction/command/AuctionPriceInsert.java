package co.micol.mp.auction.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;
import co.micol.mp.review.service.ReviewService;
import co.micol.mp.review.service.ReviewVO;
import co.micol.mp.review.serviceImpl.ReviewServiceImpl;

public class AuctionPriceInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		AuctionVO vo = new AuctionVO();
		AuctionService as = new AuctionServiceImpl();
		
		vo.setAuctionPrice(Integer.valueOf(request.getParameter("auctionPrice")));
		vo.setAuctionBuyer((String) session.getAttribute("id"));
		vo.setAuctionId(request.getParameter("auctionId"));
		as.auctionPriceInsert(vo);
		
		return "auction/auctionForm";
		
	}

}
