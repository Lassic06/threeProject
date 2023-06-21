package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;

public class MemberUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원정보 수정 폼 호출	
//		MemberService ms = new MemberServiceImpl();
//		MemberVO vo = new MemberVO();
//		HttpSession session = request.getSession();
//		
//		vo.setMemberId(String.valueOf(session.getAttribute("id")));
//		vo = ms.memberSelect(vo);
//		request.setAttribute("member", vo);
		
		return "member/memberUpdateForm";
	}

}
