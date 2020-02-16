package com.lec.mgb.mybatis.beans;

public interface UserTourDAO {

	public UserTourDTO [] selectTourByUid(int tour_uid);
	
}