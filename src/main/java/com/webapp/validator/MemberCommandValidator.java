package com.webapp.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.webapp.command.MemberCommand;

public class MemberCommandValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return MemberCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		MemberCommand member = (MemberCommand) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "required");
		
		//email length check
		if(member.getEmail().matches("^.{65,}$")){
			errors.rejectValue("email", "length", new Object[]{64}, null);
		}
		
		//email pattern check
//		String pattern = "^[A-Za-z0-9]+@[A-Za-z0-9]+\\.[A-Za-z0-9]+\\.[A-Za-z]{2,3}$";
		String pattern = "^[A-Za-z0-9_\\-]+@([A-Za-z0-9]+\\.){1,2}[A-Za-z]{2,3}$";
		
		if(!member.getEmail().matches(pattern)){
			errors.rejectValue("email", "pattern");
		}
		
		//password length check 8 이하
		if(!member.getPassword().matches("^.{8,64}$")){
			errors.rejectValue("password", "length", new Object[]{8,64}, null);
		}
		
		/*
		 * password pattern check
		 * 
		 * 1. 영문 & 숫자
		 * 2. 영문 연속3자리 이상 x
		 * 3. 숫자 연속3자리 이상 x
		 * 
		 */
		
		if(!Pattern.compile("[A-Za-z]")
			   .matcher(member.getPassword())
			   .find())
			errors.rejectValue("password", "pattern");
		
		else if(!Pattern.compile("[0-9]")
				   .matcher(member.getPassword())
				   .find())
			errors.rejectValue("password", "pattern");
		
		else if(Pattern.compile("[A-Za-z]{3,}")
				   .matcher(member.getPassword())
				   .find())
			errors.rejectValue("password", "pattern");
						
		else if(Pattern.compile("[0-9]{3,}")
				   .matcher(member.getPassword())
				   .find())
			errors.rejectValue("password", "pattern");
		
		if(member.getPassword().matches("^.{65,}$")){
			errors.rejectValue("password", "length", new Object[]{64}, null);
		}
		
		//name length check
		if(member.getName().matches("^.{13,}$")){
			errors.rejectValue("name", "length", new Object[]{12}, null);
		}
		
		//comment length check 255이하
		if(member.getComment().length() > 255){
			errors.rejectValue("comment", "length", new Object[]{255}, null);
		}
	}
	
}
