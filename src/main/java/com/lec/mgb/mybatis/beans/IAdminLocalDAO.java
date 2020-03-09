package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IAdminLocalDAO {
	
	public int insert(final AdminLocalDTO dto);
	
	public AdminLocalDTO selectByUid(int uid);
	
	public int update(int uid, @Param("a")AdminLocalDTO dto);
	public int update_nopic(int uid, @Param("a")AdminLocalDTO dto);
	
	public int deleteByUid(final int uid);
	
	ArrayList<AdminLocalDTO> select();
	
	public int countAll();
	public ArrayList<AdminLocalDTO> selectByRow(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages);

	public ArrayList<AdminLocalDTO> searchname(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
	public ArrayList<AdminLocalDTO> searchloc(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
}
