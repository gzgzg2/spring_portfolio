package com.lec.mgb.c;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;

public class C {
	// MyBatis용 SqlSession
	public static SqlSession sqlSesssion;
	
	public static ServletContext context;
}