package co.micol.mp.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
//	MEMBER_ID   NOT NULL VARCHAR2(20)  
//	MEMEBR_PW   NOT NULL VARCHAR2(20)  
//	MEMBER_NAME NOT NULL VARCHAR2(20)  
//	MEMBER_ADDR NOT NULL VARCHAR2(100) 
//	MEMBER_TEL  NOT NULL VARCHAR2(20)  
//	MEMBER_AUTH NOT NULL VARCHAR2(20)

	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberAddr;
	private String memberTel;
	private String memberAuth;
}

