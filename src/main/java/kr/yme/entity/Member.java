package kr.yme.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Member {
	private String id;
	private String pw;
	private String name;
	private String nick;
	private String phone;
	private String univ;
	private String circle_from;
	private String preference;
	private String region;
	private String mbti;
	private String birthdate;
	private Date created_at;
	
}
