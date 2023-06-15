package co.micol.mp.auction.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.auction.service.AuctionMapper;
import co.micol.mp.auction.service.AuctionService;
import co.micol.mp.auction.service.AuctionVO;
import co.micol.mp.common.DataSource;

public class AuctionServiceImpl implements AuctionService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private AuctionMapper map = sqlSession.getMapper(AuctionMapper.class);
	@Override
	public List<AuctionVO> auctionList() {
		// TODO Auto-generated method stub
		return map.auctionList();
	}

	@Override
	public AuctionVO auction(AuctionVO vo) {
		// TODO Auto-generated method stub
		return map.auction(vo);
	}

}