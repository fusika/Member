package com.webapp.exception;

public class MemberUnRegisterEmptyException extends RuntimeException{

	private static final long serialVersionUID = 1L;

	public MemberUnRegisterEmptyException() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	public MemberUnRegisterEmptyException(String message){
		super(message);
	}
	
	public MemberUnRegisterEmptyException(Throwable cause){
		super(cause);
	}
	
	public MemberUnRegisterEmptyException(String message, Throwable cause){
		super(message, cause);
	}
}
