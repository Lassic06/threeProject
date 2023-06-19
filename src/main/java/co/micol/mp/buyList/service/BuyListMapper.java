package co.micol.mp.buyList.service;

import java.util.List;

public interface BuyListMapper {
	List<BuyListVO> buyList(String memberId);
	int buyListInsert (BuyListVO vo);
}
