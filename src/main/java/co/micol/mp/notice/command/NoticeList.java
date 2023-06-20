package co.micol.mp.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;
import co.micol.mp.controller.Paging;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;
import co.micol.mp.notice.serviceImpl.NoticeServiceImpl;

public class NoticeList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		List<NoticeVO> notices = new ArrayList<>();
		
		Paging paging = new Paging();
		paging.setPageUnit(5);
		
		String page = request.getParameter("page");
		int p = 1;
		if(page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		
		int total = ns.listPage();
		paging.setTotalRecord(total);
		
		NoticeVO vo = new NoticeVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		
		notices = ns.noticeSelectList(vo);

		request.setAttribute("notices", notices);
		
		return "notice/noticeList";
	}

}
