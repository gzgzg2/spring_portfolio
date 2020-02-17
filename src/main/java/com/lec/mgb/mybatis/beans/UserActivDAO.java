package com.lec.mgb.mybatis.beans;

public interface UserActivDAO {

	public UserActivDTO [] selectActivByUid(int activ_uid);
	
}