package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;

public class MemberAddrForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	
		return "member/memberAddrForm";
	}

}
