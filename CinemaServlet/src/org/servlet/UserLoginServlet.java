package org.servlet;

import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.UserDao;
import org.dao.UserDetailDao;
import org.model.User;
import org.model.UserDetail;
import org.unti.Mark;

/**
 * Servlet implementation class LoginServlet
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		String id=request.getParameter("id");
		 String pass = request.getParameter("pass");
		 UserDao ud=new UserDao();
		 //User user=ud.queryById(id);
		UserDetailDao uds=new UserDetailDao();
		 UserDetail uDetail=ud.queryByUId(id);
		 System.out.println(uDetail);
		 request.setAttribute("uDetail",uDetail);
		 PrintWriter ot=response.getWriter();
		 if(uDetail!=null){
			 if(uDetail.getU_pass().equals(pass)==true){
				 
					 String ip = request.getRemoteAddr();
					 String time=uds.time();
					 UserDetail udd=new UserDetail(ip, time);
					 uds.logUser(udd, id); 
					 request.getSession().setAttribute(Mark.USER, uDetail);
					 System.out.println(ip);
					 System.out.println(time);
					 response.sendRedirect("Cinema/IndexImg");
				 
				 
					
				
				}else{
				 ot.print("<script type='text/javascript'>alert('���� ����!');window.location.href='login.jsp';</script>");
			 }
			 }else{
			 ot.print("<script type='text/javascript'>alert('���� ����');window.location.href='login.jsp';</script>");
		 }
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
