package com.lec.mgb.mybatis.beans;

import org.apache.ibatis.annotations.Param;

public interface AdminActivDAO {
	public UserActivDTO [] selectActiv();
	public int insertActiv(@Param("activ_name")String activ_name, @Param("activ_loc")String activ_loc, @Param("activ_info")String activ_info, @Param("activ_shop_info")String activ_shop_info, @Param("activ_pic")String activ_pic, @Param("activ_tel")String activ_tel);
	public int updateActiv(@Param("activ_loc")String activ_loc, @Param("activ_info")String activ_info, @Param("activ_shop_info")String activ_shop_info, @Param("activ_pic")String activ_pic, @Param("activ_tel")String activ_tel, @Param("activ_name")String activ_name);
	public UserActivDTO selectTicket(@Param("ticket_name")String ticket_name, @Param("activ_uid")int activ_uid);
	public int insertTicket(@Param("ticket_name")String ticket_name, @Param("ticket_first_cost")String ticket_first_cost, @Param("ticket_last_cost")String ticket_last_cost, @Param("ticket_info")String ticket_info, @Param("activ_uid")int activ_uid);
	public int updateTicket(@Param("ticket_first_cost")String ticket_first_cost, @Param("ticket_last_cost")String ticket_last_cost, @Param("ticket_info")String ticket_info, @Param("ticket_name")String ticket_name);
	public UserActivDTO selectActivUid();
}