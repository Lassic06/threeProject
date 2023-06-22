package co.micol.mp.member.service;

import java.util.List;

public interface MemberMapper {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);

	MemberVO memberLogin(MemberVO vo);
	
	MemberVO member(MemberVO vo); //마이페이지
	
	int memberPw(MemberVO vo);
	
	int memberTel(MemberVO vo);
	
	int memberName(MemberVO vo);
	
	int memberAddr(MemberVO vo);
}
