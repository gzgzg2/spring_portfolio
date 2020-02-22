package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface AdminTourDAO {
	
	public UserTourDTO [] selectTourName();
	public int insertTour(@Param("tour_name")String tour_name, @Param("tour_cost")String tour_cost, @Param("tour_period")String tour_period, @Param("tour_info")String tour_info, @Param("tour_pic")String tour_pic);
	public int updateTour(@Param("tour_cost")String tour_cost, @Param("tour_period")String tour_period, @Param("tour_info")String tour_info, @Param("tour_pic")String tour_pic, @Param("tour_name")String tour_name);
	
}