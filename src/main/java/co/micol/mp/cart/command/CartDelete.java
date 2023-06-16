package co.micol.mp.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.cart.service.CartService;
import co.micol.mp.cart.service.CartVO;
import co.micol.mp.cart.serviceImpl.CartServiceImpl;
import co.micol.mp.common.Command;

public class CartDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartService cs = new CartServiceImpl();
		CartVO vo = new CartVO();
		HttpSession session = request.getSession(); 
		
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setProductId(request.getParameter("productId"));
		System.out.println(vo.getProductId());
		System.out.println(vo.getMemberId());
		
		cs.cartDelete(vo);
		
		return "cartList.do";
	}

}
