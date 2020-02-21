package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface UserJoinLoginDAO {
	public int joinInsert(@Param("dto") MyPageInfoDTO dto);
}
