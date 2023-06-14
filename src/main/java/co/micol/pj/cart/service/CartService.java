package co.micol.pj.cart.service;

import java.util.List;

public interface CartService {

	List<CartVO> cartList();
	int cartInsert(CartVO vo);
	int catrUpdate(CartVO vo);
	int cartDelete(CartVO vo);
}
