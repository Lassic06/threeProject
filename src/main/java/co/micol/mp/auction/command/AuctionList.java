package co.micol.mp.auction.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;

public class AuctionList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//경매 상품 리스트
		AuctionService as = new AuctionServiceImpl();
		List<AuctionVO> auctions = new ArrayList<>();
		auctions = as.auctionList();
		
		request.setAttribute("auctions", auctions);
		
		
		return "auction/auctionList";
	}

}
