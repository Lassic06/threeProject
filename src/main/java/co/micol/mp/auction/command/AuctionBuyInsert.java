package co.micol.mp.auction.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;

public class AuctionBuyInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		AuctionVO vo = new AuctionVO();
		AuctionService as = new AuctionServiceImpl();
		HttpSession session = request.getSession();
		
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setAuctionId(request.getParameter("auctionId"));
		vo.setAuctionName(request.getParameter("auctionName"));
		
		vo.setAuctionPrice(Integer.valueOf(request.getParameter("auctionMax")));
		vo.setAuctionDir(request.getParameter("auctionImg"));
		
		as.auctionBuyListInsert(vo);
		
		return "auctionList.do";
	}

}
