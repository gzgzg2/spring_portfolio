package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IAdminPlannerDAO {
	
	public ArrayList<AdminPlannerDTO> select();
	public ArrayList<AdminPlannerDTO> select_good();
	public int deleteByUid(final int uid);
	
	public int count_goodPlanner();
	
	// 우수플래너
	public int updateGood(@Param("planner_uid")final int uid);
	public int updateNGood(@Param("planner_uid")final int uid);
	
	public int countAll();

	
	public ArrayList<AdminPlannerDTO> selectByRow(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages);

	public ArrayList<AdminPlannerDTO> selectViewByRow(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages);
	
	public ArrayList<AdminPlannerDTO> search_title(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
	public ArrayList<AdminPlannerDTO> search_Goodtitle(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
}
