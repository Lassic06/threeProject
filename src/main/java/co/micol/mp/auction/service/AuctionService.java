package co.micol.mp.auction.service;

import java.util.List;

public interface AuctionService {
	List<AuctionVO> auctionList(AuctionVO vo);

	AuctionVO auction(AuctionVO vo);

	int auctionInsert(AuctionVO vo);

	
	int listPage();


	int auctionPriceInsert(AuctionVO vo);


	AuctionVO auctionPriceSelect(String string);

}
