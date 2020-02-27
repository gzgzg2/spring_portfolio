package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface UserFindDAO {

	public String selectMemberByNameAndEmail(@Param("member_name")String member_name, @Param("member_email")String member_email);
	public int updateMemberPw(@Param("member_pw")String member_pw, @Param("member_pwEncode")String member_pwEncode, @Param("member_id")String member_id);
	public MyPageInfoDTO selectMemberById(@Param("member_id")String member_id);
	
	
}