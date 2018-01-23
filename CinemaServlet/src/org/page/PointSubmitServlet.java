package org.page;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.MoviesDao;
import org.model.Movies;

/**
 * Servlet implementation class PointSubmitServlet
 */
public class PointSubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PointSubmitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding( "utf-8" ); 
		int m_point=Integer.parseInt(request.getParameter("intHot"));
		int m_id=Integer.parseInt(request.getParameter("m_id"));
		
		MoviesDao md=new MoviesDao();
		md.addPoint(m_point,m_id);
		request.getRequestDispatcher("moviePage.jsp").forward(request, response);
	   // System.out.println(m_point);
	    
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		 
	}

}
