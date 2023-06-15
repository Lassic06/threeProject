package co.micol.mp.cart.service;

import java.util.List;

public interface CartMapper {

	List<CartVO> cartList(String memberId);
	CartVO cartSelect(CartVO vo);
	int cartInsert(CartVO vo);
	int cartUpdate(CartVO vo);
	int cartDelete(CartVO vo);
	
}
