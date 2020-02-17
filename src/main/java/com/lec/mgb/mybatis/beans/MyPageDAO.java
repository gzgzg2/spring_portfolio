package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface MyPageDAO {
	
	public MyPageInfoDTO selectByUid(int uid);
	public int mypageUpdate(int uid, @Param("dto") MyPageInfoDTO dto);
	public int deleteMember(int uid);
	
}
