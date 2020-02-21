package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface UserTourDAO {

	public UserTourDTO [] selectTourByUid(int tour_uid);
	public UserTourDTO [] selectReviewByUid(int tour_uid);
	public UserTourDTO selectMemberByUid(int member_uid);
	public int insertBook (@Param("member_uid")int member_uid, @Param("dto")UserTourDTO dto);
	public UserTourDTO selectCheckNameByUid(int book_uid);
	
}