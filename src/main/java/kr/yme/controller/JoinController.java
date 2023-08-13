package kr.yme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Member;
import kr.yme.mapper.MemberMapper;

@Controller
public class JoinController {
	@Autowired
	private MemberMapper mapper;
	
	@RequestMapping("/register.do")
	public String Join() {
		//Member vo
		//mapper.insertMember(vo);
		return "view_join";
	}
}
