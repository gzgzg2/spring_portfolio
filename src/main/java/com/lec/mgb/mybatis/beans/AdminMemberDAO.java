package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface AdminMemberDAO {
	
	public ArrayList<MyPageInfoDTO> select();
	//public int deleteByUid(int uid);
	
	// 페이징 용 글 목록 SELECT
	// fromRow : 몇번째 row 부터?
	// writePages : 페이지당 몇개의 데이터 (게시글)?
	public ArrayList<MyPageInfoDTO> selectByRow(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
		);
}
