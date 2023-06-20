package co.micol.mp.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;
import co.micol.mp.member.serviceImpl.MemberServiceImpl;

public class MemberList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버목록
		MemberService ms = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<MemberVO>();
		members = ms.memberSelectList();
		request.setAttribute("members", members);
		
		return "member/memberList";
	}

}
