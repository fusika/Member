package com.webapp.json;

import java.util.Date;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webapp.model.Member;

public class GsonTest {
	
	public static void main(String[] args) {
		Gson g = new GsonBuilder().setPrettyPrinting().create();
		
		String json = g.toJson("Hello");
		System.out.println(json);
		
		json = g.toJson(new String[]{"Hello", "java", "c++"});
		System.out.println(json);
		
		Member m = new Member();
		m.setId(100);
		m.setEmail("xxx@webapp.com");
		m.setName("홍길동");
		m.setPassword("1234");
		m.setRegdate(new Date());
		
		json = g.toJson(m);
		System.out.println(json);
	}
}
