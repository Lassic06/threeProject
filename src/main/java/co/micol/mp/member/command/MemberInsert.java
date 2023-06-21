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
		vo.setMemberAddr(request.getParameter("memberAddrTest") + " " + request.getParameter("memberAddr"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAuth(request.getParameter("memberAuth"));

		int n = ms.memberInsert(vo);
		if (n != 0) {
			request.setAttribute("msg", "🎊가입이 완료되었습니다🎊");
			request.setAttribute("url", "memberLoginForm.do");
			return "alert/alert";
			
		} else {
			request.setAttribute("msg", "회원가입이 실패되었습니다.");
			request.setAttribute("url", "register.do");
			return "alert/alert";
		}
	}
}
