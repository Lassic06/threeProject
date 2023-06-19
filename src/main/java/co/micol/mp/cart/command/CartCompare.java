package co.micol.mp.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.cart.service.CartService;
import co.micol.mp.cart.service.CartVO;
import co.micol.mp.cart.serviceImpl.CartServiceImpl;
import co.micol.mp.common.Command;

public class CartCompare implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartService cs = new CartServiceImpl();
		CartVO vo = new CartVO();
		CartVO co = new CartVO();

		co.setMemberId(request.getParameter("memberId"));
		co.setProductId(request.getParameter("productId"));

		co = cs.cartSelect(co);

		if (co != null) {
			vo.setMemberId(request.getParameter("memberId"));
			vo.setProductId(request.getParameter("productId"));
			vo.setProductAmount(request.getParameter("productAmount"));

			cs.cartUpdate(vo);

		} else {
			vo.setMemberId(request.getParameter("memberId"));
			vo.setProductId(request.getParameter("productId"));
			vo.setProductName(request.getParameter("productName"));
			vo.setProductPrice(request.getParameter("productPrice"));
			vo.setProductAmount(request.getParameter("productAmount"));
			vo.setProductImg(request.getParameter("productImg"));

			cs.cartInsert(vo);
		}
		
		request.setAttribute("msg", "장바구니에 담았습니다.");
		request.setAttribute("url", "productList.do");
		return "alert/alert";
	}
}
