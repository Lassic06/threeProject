package co.micol.mp.notice.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.common.DataSource;
import co.micol.mp.notice.service.NoticeMapper;
import co.micol.mp.notice.service.NoticeService;
import co.micol.mp.notice.service.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	NoticeMapper map = sqlSession.getMapper(NoticeMapper.class);
	

	@Override
	public List<NoticeVO> noticeSelectList(NoticeVO vo) {
		return map.noticeSelectList(vo);
	}
	
	

	@Override
	public List<NoticeVO> noticeSerchList(String serch) {
		return map.noticeSerchList(serch);
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(NoticeVO vo) {
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {
		return map.noticeUpdate(vo);
	}

	@Override
	public int noticeDelete(NoticeVO vo) {
		return map.noticeDelete(vo);
	}
	
	@Override
	public int noticeCountUp(NoticeVO vo) {
		return map.noticeCountUp(vo);
	}

	@Override
	public int listPage() {
		// TODO Auto-generated method stub
		return map.listPage();
	}
	
	

}
