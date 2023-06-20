package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;


public class MemberSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo = ms.memberSelect(vo);
		
		
		request.setAttribute("member", vo);
		
		return "member/memberSelect";
 
	}
}
