package org.page;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.UserDetailDao;
import org.model.UserDetail;

/**
 * Servlet implementation class MemberServlet
 */
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String u_id=request.getParameter("u_id");
		UserDetailDao udd=new UserDetailDao();
		UserDetail userDetail=udd.queryById(u_id);
		request.setAttribute("userDetail", userDetail);
		request.getRequestDispatcher("member.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");	
		String u_id=request.getParameter("u_id");
		String u_name=request.getParameter("u_name");
		String u_phone=request.getParameter("u_phone");
		int u_age=Integer.parseInt(request.getParameter("u_age"));
		String u_pass=request.getParameter("u_pass"); 
		String u_mail=request.getParameter("u_mail");
		UserDetailDao udd=new UserDetailDao();
		UserDetail userDetail=new UserDetail(u_id, u_pass, u_name, u_phone, u_age, u_mail);
		udd.updateUser(userDetail);
		 response.sendRedirect("userTask");
	}

}
