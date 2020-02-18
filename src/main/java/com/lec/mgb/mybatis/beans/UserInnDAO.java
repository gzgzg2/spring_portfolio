package com.lec.mgb.mybatis.beans;

public interface UserInnDAO {

	public UserInnDTO [] selectInnByUid(int inn_uid);
	public UserInnDTO [] selectReviewByUid(int inn_uid);
	
}