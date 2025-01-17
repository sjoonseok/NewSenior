package kr.or.club.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.club.model.dao.ClubDao;
import kr.or.club.model.vo.ChatRecord;
import kr.or.club.model.vo.Club;
import kr.or.club.model.vo.ClubBoard;
import kr.or.club.model.vo.ClubBoardComment;
import kr.or.member.model.vo.Member;

@Service
public class ClubService {
	@Autowired
	private ClubDao dao;
	
	@Transactional
	public int insertClub(Club c) {
		int result = dao.insertClub(c);
		System.out.println(c.getClubNo());
		if(result>0) {
			result = dao.insertClubLeader(c);
		}
		return result;
	}
	public ArrayList<Club> selectAllClub(String keyword) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		ArrayList<Club> list = dao.selectAllClub(map);
		return list;
	}
	public Club selectOneClub(Club club) {
		Club c = dao.selectOneClub(club);
		c.setClubMemberCnt(c.getMemberList().size());
		return c;
	}
	@Transactional
	public int insertChat(ChatRecord cr) {
		int result = dao.insertChat(cr);
		return result;
	}

	public HashMap<String, Object> selectOneClubMap(Club c) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Club club = dao.selectOneClub(c);
		map.put("club", club);
		ArrayList<ClubBoard> blist = dao.selectAllClubBoard(c);
		map.put("board", blist);
		return map;
	}
	@Transactional
	public int insertClubBoard(ClubBoard cb) {
		return dao.insertClubBoard(cb);
	}

	public ArrayList<ChatRecord> getClubChatRecord(String clubNo) {
		return dao.getClubChatRecord(Integer.parseInt(clubNo));
	}
	@Transactional
	public int insertBoardCom(ClubBoardComment cbc) {
		return dao.insertClubBoardCom(cbc);
	}
	public ArrayList<Club> searchClubPopularList(Member m) {
		return dao.searchClubPopularList(m);
	}
	public int getTotalPage() {
		return dao.getTotalPage();
	}
	public ArrayList<Club> searchMyClub(Member m) {
		return dao.searchMyClub(m);
	}
	public int insertClubMember(Member m, Club c) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("memberNo", m.getMemberNo());
		map.put("clubNo", c.getClubNo());
		return dao.insertClubMember(map);
	}
	@Transactional
	public int deleteClubComment(ClubBoardComment cbc) {
		return dao.deleteClubComment(cbc);
	}
	@Transactional
	public int updateClubBoard(ClubBoard cb) {
		return dao.updateClubBoard(cb);
	}
	@Transactional
	public int updateClubLeader(Club c) {
		return dao.updateClubLeader(c);
	}
	@Transactional
	public int deleteClubMember(ClubBoard cb) {
		return dao.deleteClubMember(cb);
	}
	@Transactional
	public int blockClubMember(int[] memberNoArr, int clubNo) {
		int result = 0;
		// 먼저 블락 테이블에 insert
		for(int i=0; i<memberNoArr.length; i++) {
			ClubBoard cb = new ClubBoard();
			cb.setClubNo(clubNo);
			cb.setMemberNo(memberNoArr[i]);
			result = dao.insertBlockMember(cb);
			// 블락 끝났으면 클럽에서 추방
			if (result>0) {
				result = dao.deleteClubMember(cb);
			}
		}
		return result;
	}
	@Transactional
	public int deleteClub(Club c) {
		int result = dao.deleteClubMember(c);
		if(result>0) {
			result = dao.deleteClub(c);
		}
		return result;
	}
	@Transactional
	public int updateClubNotice(Club c) {
		int result = dao.updateClubNotice(c);
		return result;
	}
	@Transactional
	public int deleteClubBoard(ClubBoard cb) {
		return dao.deleteClubBoard(cb);
	}
	public ArrayList<Club> searchMyClub(Member m, int startIndex, int endIndex) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberNo", m.getMemberNo());
		map.put("startIndex", startIndex);
		map.put("endIndex", endIndex);
		return dao.selectMyClubStartEnd(map);
	}
	public String searchBlockMember(Club c) {
		int result = dao.searchBlockMember(c);
		// 1이면, 블락멤버
		if(result==0) {
			result = dao.myClubCheck(c);	// -1이면 블락 멤버, 0이면 가입하지 않은 멤버, 1이면 가입한 멤버
			return String.valueOf(result);
		}else {
			return String.valueOf(-1);
		}
	}
	public ArrayList<Club> selectMainClubs() {
		return dao.selectMainClubs();
	}
	@Transactional
	public int updateClubBoardComment(ClubBoardComment cbc) {
		return dao.updateClubBoardComment(cbc);
	}

}
