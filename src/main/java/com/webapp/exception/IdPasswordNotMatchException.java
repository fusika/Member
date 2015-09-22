package com.webapp.exception;

public class IdPasswordNotMatchException extends RuntimeException{

	private static final long serialVersionUID = 1L;

	public IdPasswordNotMatchException() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	public IdPasswordNotMatchException(String message){
		super(message);
	}
	
	public IdPasswordNotMatchException(Throwable cause){
		super(cause);
	}
	
	public IdPasswordNotMatchException(String message, Throwable cause){
		super(message, cause);
	}
}
