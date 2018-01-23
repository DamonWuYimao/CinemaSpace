package org.page;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.UserDao;
import org.model.UserDetail;

/**
 * Servlet implementation class EasyFormServlet
 */
public class EasyFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EasyFormServlet() {
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
		String id=request.getParameter("uid");
		UserDao ud=new UserDao();
		UserDetail uDetail=ud.queryByUId(id);
		String name=uDetail.getU_name();
		System.out.println(name);
		if(name!=null){
			ot.print(1);
			
		}else{
			ot.print(0);
		
		}
}
}
