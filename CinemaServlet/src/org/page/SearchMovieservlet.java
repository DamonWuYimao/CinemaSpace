package org.page;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.MoviesDao;
import org.model.Movies;

/**
 * Servlet implementation class SearchMovieservlet
 */
public class SearchMovieservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchMovieservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter ot=response.getWriter();
		request.setCharacterEncoding("utf-8");
		String m_name=request.getParameter("search-input");
		MoviesDao md=new MoviesDao();
		List<Movies> mList=null;
		mList=md.queryByMovie(m_name);
		System.out.println(mList);
		request.setAttribute("mList", mList);
	    request.getRequestDispatcher("search.jsp").forward(request, response);}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html;charset=utf-8");
		
	}

}
