package co.micol.mp.buyList.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.buyList.service.BuyListService;
import co.micol.mp.buyList.service.BuyListVO;
import co.micol.mp.buyList.serviceImpl.BuyListServiceImpl;
import co.micol.mp.cart.service.CartService;
import co.micol.mp.cart.service.CartVO;
import co.micol.mp.cart.serviceImpl.CartServiceImpl;
import co.micol.mp.common.Command;

public class BuyListInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BuyListService bs = new BuyListServiceImpl();
		BuyListVO vo = new BuyListVO();
		CartService cs = new CartServiceImpl();
		CartVO co = new CartVO();
		HttpSession session = request.getSession();
		
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setProductId(request.getParameter("productId"));
		vo.setProductName(request.getParameter("productName"));
		vo.setProductPrice(request.getParameter("productPrice"));
		vo.setProductAmount(request.getParameter("productAmount"));
		vo.setProductImg(request.getParameter("productImg"));
		
		co.setProductId(request.getParameter("productId"));
		co.setMemberId(String.valueOf(session.getAttribute("id")));		
		
		bs.buyListInsert(vo);
		cs.cartDelete(co);
		
		return "cartList.do";
	}

}
