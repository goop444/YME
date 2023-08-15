package kr.yme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	@Autowired
	
	@RequestMapping("/f_search.do")
	public String searchPage() {
		
		return "view_friendSearch";
	}
}
