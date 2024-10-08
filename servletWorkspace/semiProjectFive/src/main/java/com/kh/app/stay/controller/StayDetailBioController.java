package com.kh.app.stay.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.app.stay.service.StayService;
import com.kh.app.stay.vo.StayVo;

@WebServlet("/stay/detail/bio")
public class StayDetailBioController extends HttpServlet{

	private StayService sts;
	public StayDetailBioController() {
		this.sts = new StayService();
	}

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			//데꺼
			String no = req.getParameter("no");

			if(no == null || no.length() == 0) {
				throw new Exception("조회할 숙소 번호를 입력하세요");
			}
			
			//복작
			
			StayVo vo = sts.getStayByNo(no);
			System.out.println("Controller staydetailvo: "+vo);
						
			if(vo == null) {
				throw new Exception("숙소 조회 실패 ...");
			}
			
			//결과
			req.setAttribute("vo", vo);
			
			//숙소 정보를 세션에 저장
			HttpSession session = req.getSession();
			session.setAttribute("stayInfoVo", vo);
			req.getRequestDispatcher("/WEB-INF/views/staydetail/bio.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			req.setAttribute("errMsg", e.getMessage());
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
		
		
	}
	
	
}
