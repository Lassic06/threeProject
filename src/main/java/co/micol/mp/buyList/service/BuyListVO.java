package co.micol.mp.buyList.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class BuyListVO {
//	MEMBER_ID     NOT NULL VARCHAR2(20) 
//	PRODUCT_ID             VARCHAR2(20) 
//	AUCTION_ID             VARCHAR2(20) 
//	PRODUCT_NAME           VARCHAR2(20) 
//	AUCTION_NAME           VARCHAR2(20) 
//	PRODUCT_PRICE          VARCHAR2(20) 
//	AUCTION_PRICE          VARCHAR2(20) 
//	PRODUCT_IMG            VARCHAR2(20) 
//	AUCTION_IMG            VARCHAR2(20) 
//	BUY_DATE               DATE     
//  PRODUCT_AMOUNT		   VARCHAR2(20)
	
	private String memberId;
	private String productId;
	private String auctionId;
	private String productName;
	private String auctionName;
	private String productPrice;
	private String auctionPrice;
	private String productImg;
	private String auctionImg;
	private Date buyDate;
	private String productAmount;
}
