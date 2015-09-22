package com.webapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webapp.model.Member;

public class LogProxyMemberDao implements MemberDao{

	static Log log;
	MemberDao real;
	
	public LogProxyMemberDao(MemberDao real) {
		// TODO Auto-generated constructor stub
		this.real = real;
		log = LogFactory.getLog(real.getClass());
	}
	
	@Override
	public List<Member> selectAll() {
		// TODO Auto-generated method stub
		log.info("#####################################"); 
		log.info("selectAll() start");					   
		log.info("#####################################");
		List<Member> list = real.selectAll();
		log.info("#####################################"); 
		log.info("selectAll() end");					   
		log.info("#####################################");
		return list;
	}

	@Override
	public List<Member> select(Map<String, Object> index) {
		// TODO Auto-generated method stub
		log.info("#####################################"); 
		log.info("select(Map<String, Object>) start");					   
		log.info("#####################################");
		List<Member> list = real.select(index);
		log.info("#####################################"); 
		log.info("select(Map<String, Object>) end");					   
		log.info("#####################################");
		return list;
	}

	@Override
	public Member selectById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalCount() { 
		int rtn = 0;
		try{
			//	TODO Auto-generated method stub
			log.info("#####################################"); 
			log.info("selectTotalCount() start before advice");					   
			log.info("#####################################");
			// before advice
			rtn = real.selectTotalCount(); //joinpoint(조인포인트)
			log.info("#####################################"); 
			log.info("selectTotalCount() afterreturning");					   
			log.info("#####################################");

		} catch(Throwable t){
			// after throwing
			log.info("#####################################"); 
			log.info("selectTotalCount() afterthrowing");					   
			log.info("#####################################");
		} finally {
			// after advice
			log.info("#####################################"); 
			log.info("selectTotalCount() end afteradvice");					   
			log.info("#####################################");
		}
		// after advice
		// after returning
		// after throwing
		
		// around advice
		
		// point cut ( weaving 되는 joinpoint )
		
		// aspect = pointcut + advice
		return rtn;
	}

	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertGenerator(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByEmail(String email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Member> select(int firstItem, int lastItem) {
		// TODO Auto-generated method stub
		return real.select(firstItem, lastItem);
	}

	@Override
	public Member selectByEmailWithPassword(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteByIdWithEmail(int id, String email) {
		// TODO Auto-generated method stub
		
	}
	
}
