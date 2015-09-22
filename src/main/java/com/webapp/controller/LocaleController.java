package com.webapp.controller;

import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class LocaleController {
	
	@Autowired
	LocaleResolver localeResolver;
	
	@RequestMapping("/locale/{language:[a-z]{2}}")
	public void setLocale(PrintWriter out, HttpServletRequest request, HttpServletResponse response, @PathVariable String language){
		Locale locale = new Locale(language);
		localeResolver.setLocale(request, response, locale);
		
		out.println("locale changed = "+locale.getLanguage());
	}
	
	
}
