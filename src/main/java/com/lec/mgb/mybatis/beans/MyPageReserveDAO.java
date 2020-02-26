package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface MyPageReserveDAO {
	public ArrayList<UserInnDTO> selectDateHigh(@Param("member_uid")int member_uid, @Param("writePages")int writePages, @Param("page")int page);
	public ArrayList<UserInnDTO> selectDateLow(@Param("member_uid")int member_uid, @Param("writePages")int writePages, @Param("page")int page);
	public UserInnDTO selectMemberNameByUid(@Param("member_uid")int member_uid);
	public int insertReview(@Param("review_title")String review_title, @Param("review_content")String review_content, @Param("review_star")int review_star, @Param("review_id")String review_id, @Param("book_uid")int book_uid);
	public int deleteBook(@Param("book_uid")int book_uid);
}