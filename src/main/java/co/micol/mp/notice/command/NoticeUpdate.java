package co.micol.mp.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;
import co.micol.mp.notice.serviceImpl.NoticeServiceImpl;


public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(request.getParameter("noticeId"));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		
		ns.noticeUpdate(vo);
		
		request.setAttribute("msg", "수정이 완료되었습니다.");
		request.setAttribute("url", "noticeList.do");
		return "alert/alert";
	}

}
