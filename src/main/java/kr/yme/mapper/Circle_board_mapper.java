package kr.yme.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.Circle;
import kr.yme.entity.Circle_board;
import kr.yme.entity.Member;

@Mapper
public interface Circle_board_mapper {

	public Circle selectDetail(int circle_seq);
	public Member selectName(int circle_seq);
	public List<Circle_board> selectBoard(int circle_seq);
	public int sel_c_member(Member mvo);
	
	public Circle_board selectAdetail();
	public Member selectAname();
	
	public Circle_board selectTdetail();
	
	public void insertBoard(Circle_board vo);
	public void insertImageBoard(Circle_board vo);
	
	

	
	// 나중에 매개변수 값 넘겨줄거 추가
}
