package co.micol.mp.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);

	MemberVO memberLogin(MemberVO vo); //멤버로그인
	
	int memberPw(MemberVO vo);
	
	int memberTel(MemberVO vo);

	int memberName(MemberVO vo);
	
	int memberAddr(MemberVO vo);
}
