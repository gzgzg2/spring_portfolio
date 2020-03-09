package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface MyPageReviewDAO {
	public int deleteReview(@Param("review_uid") int book_uid);
	public ArrayList<MyPageReviewDTO> tourRList(@Param("member_uid") int member_uid,@Param("page") int page);
	public ArrayList<MyPageReviewDTO> activRList(@Param("member_uid") int member_uid,@Param("page") int page);
	public ArrayList<MyPageReviewDTO> roomRList(@Param("member_uid") int member_uid,@Param("page") int page);
	public MyPageReviewDTO selectTour(@Param("book_uid") int member_uid);
	public MyPageReviewDTO selectActiv(@Param("review_uid") int member_uid);
	public MyPageReviewDTO selectRoom(@Param("book_uid") int member_uid);
	public int updateReview(@Param("review_uid") int review_uid, @Param("dto") MyPageReviewDTO dto);
}
