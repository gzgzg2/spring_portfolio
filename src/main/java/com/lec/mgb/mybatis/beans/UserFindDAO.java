package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface UserFindDAO {

	public String selectMemberByNameAndEmail(@Param("member_name")String member_name, @Param("member_email")String member_email);
	
}