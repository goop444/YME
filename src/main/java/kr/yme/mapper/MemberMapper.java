package kr.yme.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.Member;

@Mapper
public interface MemberMapper {
	
	public void insertMember(Member vo);
}
