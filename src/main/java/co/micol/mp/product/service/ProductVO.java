package co.micol.mp.product.service;

import java.sql.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
//	CREATE TABLE "C##THREE"."PRODUCT" 
//	   (	"PRODUCT_ID" VARCHAR2(20 BYTE), 
//		"PRODUCT_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
//		"PRODUCT_PRICE" NUMBER NOT NULL ENABLE, 
//		"PRODUCT_IMG" VARCHAR2(512 BYTE),
//		"PRODUCT_DIR" VARCHAR2(1024 BYTE),
//		"PRODUCT_TEXT" VARCHAR2(1024 BYTE), 
//		"PRODUCT_COUNT" NUMBER DEFAULT 0, 
//		"PRODUCT_DATE" DATE, 
//		 PRIMARY KEY ("PRODUCT_ID")
	private String productId;
	private String productName;
	private int productPrice;
	private String productImg;
	private String productDir;
	private String productText;
	private int productCount;
	private Date productDate;
	private int productAmount;
	private String productCategory;
	
	
}
