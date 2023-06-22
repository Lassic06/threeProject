package co.micol.mp.auction.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;

public class AuctionTimeOut implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		AuctionService as = new AuctionServiceImpl();
		AuctionVO vo = new AuctionVO();
		AuctionVO co = new AuctionVO();
		co.setAuctionId(request.getParameter("auctionId"));
		
		co = as.auction2(co);
		
		if(co != null) {
			vo.setAuctionId(request.getParameter("auctionId"));
			System.out.println(request.getParameter("auctionId"));
			vo.setAuctionMax(Integer.valueOf(request.getParameter("auctionPrice")));
			System.out.println(Integer.valueOf(request.getParameter("auctionPrice")));
			as.auctionPriceUpdate(vo);
			
			request.setAttribute("msg", "상품 판매가 종료되었습니다.");
			request.setAttribute("url", "auctionList.do");
			return "alert/alert";
			
		}else {
			vo.setMemberId(request.getParameter("auctionbuyerId"));
			vo.setAuctionId(request.getParameter("auctionId"));
			vo.setAuctionName(request.getParameter("auctionName"));
			vo.setAuctionPrice(Integer.valueOf(request.getParameter("auctionPrice")));
			System.out.println(request.getParameter("auctionPrice"));
			vo.setAuctionDir(request.getParameter("auctionImg"));
			
			as.auctionBuyListInsert(vo);
			
			return "auctionList.do";
			
		}
	}

}
