package kr.yme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@Autowired

	@RequestMapping("/mypage.do")
	public String goMyPage() {

		return "view_mypage";
	}
}
