package kr.or.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.member.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	
	@RequestMapping(value="/memberMgrAdmin.do")
	public String memberMgrAdmin() {
		return "myPage/memberMgrAdmin";
	}

	@RequestMapping(value="/mypage.do")
	public String insertProductFrm() {
		return "myPage/mypage";
	}
	@RequestMapping(value="/orderHistory.do")
	public String orderHistory() {
		return "myPage/orderHistory";
	}
	@RequestMapping(value="/classHistory.do")
	public String classHistory() {
		return "myPage/classHistory";
	}
	@RequestMapping(value="/myClub.do")
	public String myClub() {
		return "myPage/myClub";
	}
	@RequestMapping(value="/myComment.do")
	public String myComment() {
		return "myPage/myComment";
	}
	@RequestMapping(value="/teacherInfo.do")
	public String teacherInfo() {
		return "myPage/teacherInfo";
	}
	

}
