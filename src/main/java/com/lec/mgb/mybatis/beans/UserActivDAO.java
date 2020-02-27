package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface UserActivDAO {

	public UserActivDTO [] selectActiv();
	public UserActivDTO [] selectActivSale();
	public UserActivDTO [] selectActivPopular();
	public UserActivDTO [] selectActivByKeyword(@Param("activ_loc")String activ_loc, @Param("activ_name")String activ_name);
	public ArrayList<UserActivDTO> selectActivAjax(@Param("activ_loc")String activ_loc, @Param("activ_name")String activ_name);
	public UserActivDTO [] selectActivByUid(int activ_uid);
	public UserActivDTO [] selectReviewStarByUid(int activ_uid);
	public ArrayList<UserTourDTO> selectReviewByUid(@Param("activ_uid")int activ_uid, @Param("writePages")int writePages, @Param("page")int page);
	public UserActivDTO [] selectMemberByUid(int member_uid);
	public UserActivDTO [] selectTicketNameByUid(int ticket_uid);
	public int insertBook(@Param("member_uid")int member_uid, @Param("dto")UserActivDTO dto);
	public UserActivDTO selectBookUidByUid(int member_uid);
	public UserActivDTO selectCheckByUid(@Param("member_uid")int member_uid, @Param("book_uid")int book_uid);
	public UserActivDTO selectTitleByUid(int ticket_uid);
	
}