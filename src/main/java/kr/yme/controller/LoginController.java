package kr.yme.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Member;
import kr.yme.mapper.LoginMapper;

@Controller
public class LoginController {

	@Autowired
	private LoginMapper mapper;
	
	@RequestMapping("/login.do")
	public String Login(Member vo, HttpSession session) {
		Member mvo = mapper.login(vo);

		if (mvo != null) {
			session.setAttribute("mvo", mvo);
		}
		return "redirect:/main.do";
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/ajax.do";
	}
}
