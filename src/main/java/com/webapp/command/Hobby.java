package com.webapp.command;

public class Hobby {
	String code;
	String label;
	
	public Hobby() {
		// TODO Auto-generated constructor stub
	}
	
	public Hobby(String code, String label) {
		// TODO Auto-generated constructor stub
		this.code = code;
		this.label = label;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
}
