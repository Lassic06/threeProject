package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;

public class MemberAddr implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		vo.setMemberId(String.valueOf(session.getAttribute("id")));
		vo.setMemberAddr(request.getParameter("memberAddr"));
	
		ms.memberAddr(vo);
		
		request.setAttribute("member", vo);
		//세션 삭제
		session.invalidate();
		
		return "main/main";
		
	}

}
