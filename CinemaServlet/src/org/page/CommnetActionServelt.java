package org.page;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.CommentDao;
import org.model.Comment;

/**
 * Servlet implementation class CommnetActionServelt
 */
public class CommnetActionServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommnetActionServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter ot=response.getWriter();
		   request.setCharacterEncoding("utf-8");
		   String u_id=request.getParameter("u_id");
		   String m_id=request.getParameter("m_id");
		   String comment=request.getParameter("comment");
		   String c_time=request.getParameter("c_time");
//		   System.out.println(u_id);	
//		   System.out.println(m_id);
//		   System.out.println(comment);
		   if(comment==null){
			   ot.print("<script type='text/javascript'>alert('«ÎÃÓ–¥∆¿¬€‘Ÿ∆¿¬€!');window.location.href='Login.jsp';</script>");
		   }else{
			   

			   CommentDao cd=new CommentDao();
			   Comment commen=new Comment(u_id,m_id,comment,c_time);
			   cd.addComment(commen);
			  response.sendRedirect("IndexImg");
		   }
	}

}
