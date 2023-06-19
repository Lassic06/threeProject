package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub	
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		
		vo = ms.memberLogin(vo);
		
		if(vo != null) {
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("auth", vo.getMemberAuth()); // 관리자 데이터 가져오기
		}else {
			request.setAttribute("msg", "아이디 또는 비밀번호를 확인해주세요");
			request.setAttribute("url", "memberLoginForm.do");
			return "alert/alert";
		}
		
		
		return "main/main";
	}

}
