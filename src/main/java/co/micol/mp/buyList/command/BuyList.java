package co.micol.mp.buyList.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.buyList.service.BuyListService;
import co.micol.mp.buyList.service.BuyListVO;
import co.micol.mp.buyList.serviceImpl.BuyListServiceImpl;
import co.micol.mp.common.Command;

public class BuyList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BuyListService bs = new BuyListServiceImpl();
		HttpSession session = request.getSession();
		
		String memberId = String.valueOf(session.getAttribute("id"));
		
		List<BuyListVO> buyList = bs.buyList(memberId);
		request.setAttribute("buyLists", buyList );
		
		return "buyList/buyList";
	}

}
