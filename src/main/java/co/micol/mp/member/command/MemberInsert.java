package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;

public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 수행
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAuth(request.getParameter("memberAuth"));

		ms.memberInsert(vo);
//		if (n != 0) {
//			request.setAttribute("message", "회원가입 성공");
//		} else {
//			request.setAttribute("message", "회원가입 실패! 다시 가입하세요");
//		}
		return "main/main";
	}
}
