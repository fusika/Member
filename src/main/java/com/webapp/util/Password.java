package com.webapp.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Password {
	static Log log = LogFactory.getLog(Password.class);
	/*
	 * 단방향 암호화					==> MDS, SHA-256
	 * 양방향 암호화 (암호화, 복호화)	==> AES-256
	 */
	static public String encode(String password){
		
		StringBuffer buffer = new StringBuffer();
		try {
			MessageDigest message = MessageDigest.getInstance("SHA-256");
			byte[] digest = message.digest(password.getBytes());
			log.info("digest bytes = " + digest.length);
			
			for(byte b : digest){
				buffer.append(String.format("%02X", b));
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		log.info("["+password+"] ==> ["+buffer.toString()+"]");
		return buffer.toString();
	}
	
	public static void main(String[] args) {
		
		System.out.println(encode("123456789abcdefgyyy"));
		System.out.println(encode("123456789abcdefgyy"));
		System.out.println(encode("123456789abcdefgy"));
	}
}
