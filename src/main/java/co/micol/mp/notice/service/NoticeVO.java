package co.micol.mp.notice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class NoticeVO {

//	NOTICE_ID      NOT NULL VARCHAR2(20)  
//	NOTICE_TITLE   NOT NULL VARCHAR2(100) 
//	NOTICE_SUBJECT NOT NULL VARCHAR2(500) 
//	NOTICE_DATE    NOT NULL DATE          
//	NOTICE_WRITER  NOT NULL VARCHAR2(20) 
//  NOTICE_COUNT            VARCHAR2(20) 
	
	private String noticeId;
	private String noticeTitle;
	private String noticeSubject;
	private Date noticeDate;
	private String noticeWriter;
	private String noticeCount;
	private int first;
	private int last;
	private String noticeSerch; //게시물 검색

	
}
