package kr.yme.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PythonController {

	
	
	@PostMapping("/ajax.do")
	public ResponseEntity<String> handlePostRequest(@RequestBody String data){
		System.out.println("전달받은 데이터" + data);
		
		return new ResponseEntity<String>("데이터 전달받음",HttpStatus.OK);
				
	}
}
