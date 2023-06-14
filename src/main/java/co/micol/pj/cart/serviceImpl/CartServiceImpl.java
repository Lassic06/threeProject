package co.micol.pj.cart.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.common.DataSource;
import co.micol.pj.cart.service.CartService;
import co.micol.pj.cart.service.CartVO;

public class CartServiceImpl implements CartService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	
	@Override
	public List<CartVO> cartList() {
		return null;
	}

	@Override
	public int cartInsert(CartVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int catrUpdate(CartVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cartDelete(CartVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
