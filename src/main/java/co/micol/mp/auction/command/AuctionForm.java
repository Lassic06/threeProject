package co.micol.mp.auction.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;

public class AuctionForm implements Command {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품상세보기 호출
		AuctionService as = new AuctionServiceImpl();
		AuctionVO vo = new AuctionVO();
		
		vo.setAuctionId(request.getParameter("auctionId"));
		vo=as.auction(vo);
		request.setAttribute("auction", vo);
		
		return "auction/auctionForm";
	}
}
