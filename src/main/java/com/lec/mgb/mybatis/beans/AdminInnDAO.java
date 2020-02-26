package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface AdminInnDAO {
	public UserInnDTO [] selectInn();
	public int insertInn(@Param("inn_name")String inn_name, @Param("inn_loc")String inn_loc, @Param("inn_ment")String inn_ment, @Param("inn_info")String inn_info, @Param("inn_pic")String inn_pic, @Param("inn_sep")int inn_sep);
	public int updateInn(@Param("inn_loc")String inn_loc, @Param("inn_ment")String inn_ment, @Param("inn_info")String inn_info, @Param("inn_pic")String inn_pic, @Param("inn_name")String inn_name);
	public int insertRoom(@Param("room_name")String room_name, @Param("room_first_cost")String room_first_cost, @Param("room_pic")String room_pic, @Param("room_last_cost")String room_last_cost, @Param("inn_uid")int inn_uid);
	public UserInnDTO selectRoomUid(@Param("inn_uid")int inn_uid);
	public int insertBook(@Param("book_name")String book_name, @Param("room_uid")int room_uid, @Param("book_member_name")String book_member_name);
	public int insertReview(@Param("review_title")String review_title, @Param("review_star")String review_star, @Param("review_content")String review_content, @Param("review_id")String review_id, @Param("book_uid")int book_uid);
	public UserInnDTO selectInnUid();
	public UserInnDTO selectBookUid();
}