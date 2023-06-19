package co.micol.mp.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;

public class LoginAlert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("msg", "로그인이 필요합니다.");
		request.setAttribute("url", "memberLoginForm.do");
		return "alert/alert";
	}

}
