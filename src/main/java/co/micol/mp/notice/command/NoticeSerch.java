package co.micol.mp.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;
import co.micol.mp.notice.serviceImpl.NoticeServiceImpl;

public class NoticeSerch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		String serch = request.getParameter("search");
		System.out.println(request.getParameter("search"));
		List<NoticeVO> notices = ns.noticeSerchList(serch);
		
		vo.setNoticeSerch(serch);

		

		request.setAttribute("notices", notices);
		
		return "notice/noticeSerch";
	}

}
