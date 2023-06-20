package co.micol.mp.buyList.service;

import java.util.List;

public interface BuyListService {
	List<BuyListVO> productBuyList(String memberId);
	List<BuyListVO> auctionBuyList(String memberId);
	int buyListInsert (BuyListVO vo);
}
