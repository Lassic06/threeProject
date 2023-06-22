package co.micol.mp.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.micol.mp.common.DataSource;
import co.micol.mp.member.service.MemberMapper;
import co.micol.mp.member.service.MemberService;
import co.micol.mp.member.service.MemberVO;

public class MemberServiceImpl implements MemberService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	@Override
	public List<MemberVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);

	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		return map.memberLogin(vo);
	}


	@Override
	public int memberPw(MemberVO vo) {
		return map.memberPw(vo);
		
	}

	@Override
	public int memberTel(MemberVO vo) {
		return map.memberTel(vo);
	}

	@Override
	public int memberName(MemberVO vo) {
		return map.memberName(vo);
	}

	@Override
	public int memberAddr(MemberVO vo) {
		return map.memberAddr(vo);
	}

}
