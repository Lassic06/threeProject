package co.micol.mp.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.notice.serviceImpl.NoticeServiceImpl;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(request.getParameter("noticeId"));
		
		ns.noticeDelete(vo);
		
		return "noticeList.do";
	}

}
