package com.webapp.mybatis;

import static org.apache.ibatis.jdbc.SqlBuilder.*;

public class SqlBuilderTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
				BEGIN();
				UPDATE("member");
		if(true) SET("email = ?");
		if(true) SET("password = ?");
		if(true) SET("name = ?");
		if(true) SET("regdate = ?");
		if(true)WHERE("id = ?");
		if(true)WHERE("email = ?");
				OR();
		if(true)WHERE("email = ?");
		
		System.out.println(SQL());
	}

}
