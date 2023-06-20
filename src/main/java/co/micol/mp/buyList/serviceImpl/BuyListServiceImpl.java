package co.micol.mp.buyList.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.buyList.service.BuyListMapper;
import co.micol.mp.buyList.service.BuyListService;
import co.micol.mp.buyList.service.BuyListVO;
import co.micol.mp.common.DataSource;

public class BuyListServiceImpl implements BuyListService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BuyListMapper map = sqlSession.getMapper(BuyListMapper.class);
	
	@Override
	public List<BuyListVO> productBuyList(String memberId) {
		return map.productBuyList(memberId);
	}
	
	@Override
	public List<BuyListVO> auctionBuyList(String memberId) {
		return map.auctionBuyList(memberId);
	}

	@Override
	public int buyListInsert(BuyListVO vo) {
		return map.buyListInsert(vo);
	}

}
