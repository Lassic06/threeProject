package co.micol.mp.buyList.service;

import java.util.List;

public interface BuyListMapper {
	List<BuyListVO> buyList();
	int buyListInsert (BuyListVO vo);
}
