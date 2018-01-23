package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.SendMail;
import org.dao.UserDao;
import org.dao.UserDetailDao;
import org.model.User;
import org.model.UserDetail;
import org.unti.MD5Util;
import org.unti.Mark;

/**
 * Servlet implementation class UdetailServlet
 */
public class UdetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UdetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    PrintWriter ot= response.getWriter();
		request.setCharacterEncoding("utf-8");
		String u_id=request.getParameter("uid");
		String u_pass=request.getParameter("psw1");
		String u_name=request.getParameter("nickname");
		String u_address=request.getParameter("address");
		String u_phone=request.getParameter("phone");
		int u_age=Integer.parseInt(request.getParameter("age"));
		String u_mail=request.getParameter("email");
		String u_addtime=request.getParameter("u_addtime");
		
		
		
		UserDetailDao udd=new UserDetailDao();
//		UserDetail userDetail=udd.queryById(u_id);
//		String id=userDetail.getU_id();
//		user.getU_pass().equals(pass)==true
//	   if(u_id.equals(id)==true){
		   
	  
		UserDetail ud=new UserDetail(u_id,u_pass,u_name,u_address,u_phone,u_age,u_mail,u_addtime);
		udd.addUser(ud);
		UserDao uds=new UserDao();
		User user=uds.queryById(u_id);
		request.getSession().setAttribute(Mark.USER, user);
        
		StringBuilder builder=new StringBuilder();
		StringBuffer url=new StringBuffer();
		StringBuffer url_encoded=new StringBuffer();
		String subject = "";
		String contextPath = request.getContextPath();
		String rUrl = String.valueOf(request.getRequestURL());	
		url.append(rUrl.substring(0, rUrl.indexOf(contextPath)));
		url.append(contextPath+"/activateEmail.jsp?");
		
		url_encoded.append("u_id="+u_id+"&active_state=1");

		url.append(MD5Util.encode2hex(url_encoded.toString()));
		
		//System.out.println(url);
		//builder.append("<html><head><meta http-equiv=\"Content-Type\" content=\"textml; charset=UTF-8\" </head><body>");  
       builder.append("�����·����Ӽ����������䣬��ɼ�������Ĳ���!");  
        //builder.append("<br/><br/>");  
       // builder.append("<a href=\"" + url + "\">");  
        builder.append(url);  
        //builder.append("</a>");  
       // builder.append("</body><ml>");  
        subject = "�����ַ���� -"+u_name;
		SendMail sm=new SendMail(u_mail, subject, builder.toString());
		sm.send();
		response.sendRedirect("wait.jsp");
		
		
//	}else{
//		ot.println("<script type='text/javascript'>alert('�û����ѱ�ע��');window.location.href='register.jsp';</script>");
//	 }
		 
	 }

}
