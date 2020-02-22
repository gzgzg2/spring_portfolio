package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface UserActivDAO {

	public UserActivDTO [] selectActivByUid(int activ_uid);
	public UserActivDTO [] selectReviewByUid(int activ_uid);
	public UserActivDTO [] selectMemberByUid(int member_uid);
	public UserActivDTO [] selectTicketNameByUid(int ticket_uid);
	public int insertBook(@Param("member_uid")int member_uid, @Param("dto")UserActivDTO dto);
	public UserActivDTO selectBookUidByUid(int member_uid);
	public UserActivDTO selectCheckByUid(@Param("member_uid")int member_uid, @Param("book_uid")int book_uid);
	
}