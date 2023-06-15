package co.micol.mp.cart.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.cart.service.CartService;
import co.micol.mp.cart.service.CartVO;
import co.micol.mp.cart.serviceImpl.CartServiceImpl;
import co.micol.mp.common.Command;


public class CartList implements Command {

	 @Override
	    public String exec(HttpServletRequest request, HttpServletResponse response) {
	        CartService cs = new CartServiceImpl();
	        HttpSession session = request.getSession();
	        String memberId = String.valueOf(session.getAttribute("id"));

	        List<CartVO> carts = cs.cartList(memberId);
	        request.setAttribute("carts", carts);

	        return "cart/cartList";
	    }
}
