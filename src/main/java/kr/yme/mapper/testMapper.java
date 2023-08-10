package kr.yme.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.test;

@Mapper
public interface testMapper {
	
	public void insertTest(test vo);
}
