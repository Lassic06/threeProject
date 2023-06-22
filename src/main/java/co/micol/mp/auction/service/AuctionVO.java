package co.micol.mp.auction.service;

import java.sql.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class AuctionVO {
//	AUCTION_ID	VARCHAR2(20 BYTE)
//	AUCTION_NAME	VARCHAR2(100 BYTE)	
//	AUCTION_PRICE	NUMBER	No		
//	AUCTION_IMG	VARCHAR2(512 BYTE)		
//	AUCTION_TEXT	VARCHAR2(1024 BYTE)
//  AUCTION_MAX     NUMBER
//	AUCTION_DATE	DATE	
//	AUCTION_REVIEW	VARCHAR2(512 BYTE) -> AUCTION_LASTDATE 	DATE	
//  AUCTION_SELLER  VARCHAR2(20 BYTE)
//  AUCTION_BUYER   VARCHAR2(20 BYTE)
//  AUCTION_COUNT   NUMBER
//  AUCTION_DIR     VARCHAR2(1024 BYTE)

	private String auctionId;
	private String auctionName;
	private int auctionPrice;
	private String auctionImg;
	private String auctionText;
	private int auctionMax;
	private Date auctionDate;
	private	String auctionLastDate;
	private String auctionSeller;
	private String auctionBuyer;
	private int auctionCount;
	private String auctionDir;
	private String memberId;

	private String auctionSellerId;
	private String auctionBuyerId;

	private int first;
	private int last;

}
