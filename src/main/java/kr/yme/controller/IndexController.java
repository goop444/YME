package kr.yme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/ajax.do")
	public String index() {
		
		return "main"; // main.jsp
	}
}
