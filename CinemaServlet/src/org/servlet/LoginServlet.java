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
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		 User user=ud.queryById(id);
		 UserDetailDao uds=new UserDetailDao();
		 request.setAttribute("user",user);
		 PrintWriter ot=response.getWriter();
		 if(user!=null){
			 if(user.getU_pass().equals(pass)==true){
				 if(user.getU_flag()==1){
					 String ip = request.getRemoteAddr();
					 request.getSession().setAttribute(Mark.USER, user);
					 System.out.println(ip);
					 response.sendRedirect("admin/index.html");
				 }
				 else {
					 String ip = request.getRemoteAddr();
					 String time=uds.time();
					 System.out.println(time);
					 System.out.println(ip);
					 UserDetail udd=new UserDetail(ip, time);
					 uds.logUser(udd, id); 
					 request.getSession().setAttribute(Mark.USER, user);
					 response.sendRedirect("Cinema/index.jsp");
				 }
				}else{
				 ot.print("<script type='text/javascript'>alert('√‹¬Î ¥ÌŒÛ!');window.location.href='AdminLogin.jsp';</script>");
			 }
			 }else{
			 ot.print("<script type='text/javascript'>alert('√‹¬Î ¥ÌŒÛ');window.location.href='AdminLogin.jsp';</script>");
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
