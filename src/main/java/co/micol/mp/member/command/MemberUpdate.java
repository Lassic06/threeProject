package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;

public class MemberUpdate implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원정보수정 실행
	
		MemberService ms = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
	
		ms.memberUpdate(vo);
		
		request.setAttribute("member", vo);
		//세션 삭제
		session.invalidate();
		
		
		return "main/main";
	}

}
