package co.micol.mp.notice.service;

import java.util.List;

public interface NoticeService {
	List<NoticeVO> noticeSelectList();//전체조회
	List<NoticeVO> noticeSerchList(String serch); // 검색기능
	NoticeVO noticeSelect(NoticeVO vo); //한명조회
	int noticeInsert(NoticeVO vo);      //입력
	int noticeUpdate(NoticeVO vo);      //수정
	int noticeDelete(NoticeVO vo);      //삭제
	int noticeCountUp(NoticeVO vo); 	//조회수 상승
}
