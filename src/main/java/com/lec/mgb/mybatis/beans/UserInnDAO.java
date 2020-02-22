package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface UserInnDAO {

	public UserInnDTO [] selectInn();
	public UserInnDTO [] selectInnByKeyword(@Param("inn_loc")String inn_loc, @Param("inn_name")String inn_name);
	public UserInnDTO [] selectInnByUid(int inn_uid);
	public UserInnDTO [] selectReviewByUid(int inn_uid);
	public UserInnDTO selectMemberByUid(int member_uid);
	public UserInnDTO selectRoomNameByUid(int room_uid);
	public int insertBook(@Param("member_uid")int member_uid, @Param("dto")UserInnDTO dto);
	public UserInnDTO selectBookUidByUid(int member_uid);
	public UserInnDTO selectCheckByUid(@Param("member_uid")int member_uid, @Param("book_uid")int book_uid);
	
}