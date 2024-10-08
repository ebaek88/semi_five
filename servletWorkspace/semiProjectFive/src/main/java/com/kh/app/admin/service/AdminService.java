package com.kh.app.admin.service;

import com.kh.app.admin.dao.AdminDao;
import com.kh.app.admin.vo.AdminVo;
import com.kh.app.business.vo.BusinessMemberVo;
import com.kh.app.common.vo.PageVo;
import com.kh.app.member.vo.MemberVo;

import static com.kh.app.db.SqlSessionTemplate.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class AdminService {
	
	//자주 쓸 dao필드로빼기
	private final AdminDao dao;
	
	public AdminService() {
		this.dao =  new AdminDao();
	}
	
	
	
	public AdminVo login(AdminVo vo) throws Exception {
		SqlSession ss = getSqlSession();
		AdminVo loginAdminVo = dao.login(ss,vo);
		ss.close();
		return loginAdminVo;
	
	}




	//총회원수
	public int getMemberCnt() throws Exception {
		SqlSession ss = getSqlSession();
		int cnt = dao.getMemberCnt(ss);
		System.out.println("service memberCnt: "+cnt);
		ss.close();
		return cnt;
	}

//전체회원목록
	public List<MemberVo> selectMemberList(PageVo pvo) throws Exception {
		SqlSession ss = getSqlSession();
		List<MemberVo>voList = dao.selectMemberList(ss,pvo);
		System.out.println("service pvo :"+pvo);

		ss.close();
		return voList;
	}


	
	
	
	//전체사업자회원목록조회
	public int getBusinessCnt() throws Exception {
		SqlSession ss = getSqlSession();
		int cnt = dao.getBusinessCnt(ss);
		System.out.println("service bizCnt: "+cnt);
		ss.close();
		return cnt;
	}

	
	
	
	
//사업자회원목록
	public List<BusinessMemberVo> selectBusinessList(PageVo pvo) throws Exception {
		SqlSession ss = getSqlSession();
		List<BusinessMemberVo>voList = dao.selectBusinessList(ss, pvo);
		System.out.println("service bizmem pvo: "+pvo);
		ss.close();
		return voList;
	
	
	}


//비즈니스 체크된 멤버 승인하기
	public int approve(String[] noArr) throws Exception {
		
		
		SqlSession ss = getSqlSession();
		int result = dao.approve(ss, noArr);
		if(result>0) {
			
			ss.commit();

		}else {
			ss.rollback();

		}ss.close();
		return result;
		
	}



	public int delete(String[] noArr) throws Exception {
		
		SqlSession ss = getSqlSession();
		int result = dao.delete(ss, noArr);
		if(result>0) {
			
			ss.commit();

		}else {
			ss.rollback();

		}ss.close();
		return result;
	
	
	}





}
