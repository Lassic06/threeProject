package co.micol.mp.auction.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;
import co.micol.mp.controller.Paging;

public class AuctionList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//경매 상품 리스트
		AuctionService as = new AuctionServiceImpl();
		List<AuctionVO> auctions = new ArrayList<>();
		
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(6);
		//현재 페이지 번호
		String page = request.getParameter("page");
		int p = 1;
		if(page != null) 
			p = Integer.parseInt(page);
		paging.setPage(p);
		//전체 건수
		int total = as.listPage();
		paging.setTotalRecord(total);
		
		AuctionVO vo = new AuctionVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());

		auctions = as.auctionList(vo);
		
		request.setAttribute("auctions", auctions);
		request.setAttribute("paging", paging);
		
		
		return "auction/auctionList";
	}

}
