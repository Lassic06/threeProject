package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;

public class AdminDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원탈퇴
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		
		ms.memberDelete(vo);
		
		return "memberList.do";
	}
}
