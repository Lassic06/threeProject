package co.micol.mp.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;
import co.micol.mp.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeWriter(request.getParameter("noticeWriter"));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
//		vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		
		ns.noticeInsert(vo);		
		
		return "noticeList.do";
	}

}
