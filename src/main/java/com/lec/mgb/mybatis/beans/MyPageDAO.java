package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface MyPageDAO {
	public MyPageInfoDTO selectMember(String member_id);
	public MyPageInfoDTO selectByUid(int uid);
	public int mypageUpdate(int uid, @Param("dto") MyPageInfoDTO dto);
	public int deleteMember(int uid);
	public int updatePassword(int uid, @Param("dto") MyPageInfoDTO dto);
}
