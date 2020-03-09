package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IAdminMemberDAO {
	
	public ArrayList<AdminMemberDTO> select();
	public int deleteByUid(final int uid);
	
	// 페이징 용 글 목록 SELECT
	// fromRow : 몇번째 row 부터?
	// writePages : 페이지당 몇개의 데이터(게시글)?
	
	public int countAll();
	public int countSearchId(@Param("keyword") String keyword);
	public int countSearchName(@Param("keyword") String keyword);
	
	public ArrayList<AdminMemberDTO> selectByRow(
				@Param("fromRow") int fromRow,
				@Param("writePages") int writePages
			);

	public ArrayList<AdminMemberDTO> searchid(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
	public ArrayList<AdminMemberDTO> searchname(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);

}
