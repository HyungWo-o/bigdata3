package kr.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mem.model.Member_DAO;
import kr.mem.model.Member_VO;

public class MemberInsertController implements Controller{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpath = request.getContextPath();
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		Member_VO vo = new Member_VO();
		vo.setName(name);
		vo.setPhone(phone);
		vo.setAddr(addr);
		
		Member_DAO dao = new Member_DAO();
		int cnt = dao.memberInsert(vo);
		
		String page = null;
		if(cnt>0) {
			page = "redirect:"+cpath+"/list.do";
		} else {
			throw new ServletException("error");
		}
		
		return page;
	}


}
