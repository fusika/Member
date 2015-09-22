package com.webapp.aspect;

import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;

@Aspect
@Order(0)
public class LoggingAspect {

//	@Pointcut("execution(public * *..*MemberDao.*(..) )")
	@Pointcut("execution(public * com.webapp.dao.*MemberDao.*(..) ) || execution(public * com.webapp.service.*Service.*(..) )")
	void dao(){ }
	
	@Before("dao()")
	void before(JoinPoint jp){
		Log log = LogFactory.getLog(jp.getTarget().getClass());
		String msg = "###"+
					 jp.getSignature().getName() + 
					 "(" +
					 	Arrays.toString(jp.getArgs()) +
					 ")" +
					 " START";
		log.info(msg);
	}
	
	@After("dao()")
	void after(JoinPoint jp){
		Log log = LogFactory.getLog(jp.getTarget().getClass());
		String msg = "###"+
				 jp.getSignature().getName() + 
				 "(" +
				 	Arrays.toString(jp.getArgs()) +
				 ")" +
				 " START";
		log.info(msg);
	}
}
