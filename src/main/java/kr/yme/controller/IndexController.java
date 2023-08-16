package kr.yme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Member;
import kr.yme.entity.test;
import kr.yme.mapper.MemberMapper;
import kr.yme.mapper.testMapper;

@Controller
public class IndexController {
	
	
	@RequestMapping("/ajax.do")
	public String index() {
		
		return "view_login"; // main.jsp
	}
	
	@RequestMapping("/main.do")
	public String goMain() {
		return "main";
	}
	
	@RequestMapping("/mtest.do")
	public String chart() {
		
		return "view_friendSearch";
	}
	
	@RequestMapping("/pTest.do")
	public String test() {
		return "pythonTest";
	}
	/*
	 * @PostMapping("/register.do") public String register(Member vo) {
	 * mapper.insertMember(vo);
	 * 
	 * return "test"; }
	 */

}
