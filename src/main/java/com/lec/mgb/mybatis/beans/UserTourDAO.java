package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface UserTourDAO {
	public ArrayList<UserTourDTO> selectTourByStarHigh(@Param("fromRow") int fromRow, @Param("writePages") int writePages);
	public ArrayList<UserTourDTO> selectTourByCostHigh(@Param("fromRow") int fromRow, @Param("writePages") int writePages);
	public ArrayList<UserTourDTO> selectTourByCostLow(@Param("fromRow") int fromRow, @Param("writePages") int writePages);
	public UserTourDTO [] selectTourByUid(int tour_uid);
	public UserTourDTO [] selectReviewByUid(int tour_uid);
	public UserTourDTO selectMemberByUid(int member_uid);
	public int insertBook (@Param("member_uid")int member_uid, @Param("dto")UserTourDTO dto);
	public UserTourDTO selectBookUidByUid(int member_uid);
	public UserTourDTO selectCheckByUid(@Param("member_uid")int member_uid, @Param("book_uid")int book_uid);
	
}