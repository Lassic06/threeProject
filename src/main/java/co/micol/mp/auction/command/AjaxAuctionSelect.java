package co.micol.mp.auction.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.auction.serviceImpl.AuctionServiceImpl;
import co.micol.mp.common.Command;


public class AjaxAuctionSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String str = "Ajax:";
		AuctionService as = new AuctionServiceImpl();
		AuctionVO vo = new AuctionVO();
		String auctionId= request.getParameter("auctionId");
		
		vo = as.auctionPriceSelect(auctionId);
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str += mapper.writeValueAsString(vo);
		} catch (JacksonException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return str;
	
	}

}
