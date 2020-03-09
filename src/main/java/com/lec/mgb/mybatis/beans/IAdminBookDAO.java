package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IAdminBookDAO {
	
	public ArrayList<AdminBookDTO> select_room();
	
	public ArrayList<AdminBookDTO> selectByRow_room(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
		);

	public ArrayList<AdminBookDTO> select_tour();
	
	public ArrayList<AdminBookDTO> selectByRow_tour(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
	public ArrayList<AdminBookDTO> select_activ();
	
	public ArrayList<AdminBookDTO> selectByRow_activ(
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
	public ArrayList<AdminBookDTO> search_selectByRow_room(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
		);
	
	public ArrayList<AdminBookDTO> search_selectByRow_tour(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
	
	public ArrayList<AdminBookDTO> search_selectByRow_activ(
			@Param("search_option") String search_option,
			@Param("keyword") String keyword,
			@Param("fromRow") int fromRow,
			@Param("writePages") int writePages
			);
}
