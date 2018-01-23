package org.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.MoviesDao;
import org.model.Movies;

/**
 * Servlet implementation class UpdateMoviesServlet
 */
public class UpdateMoviesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMoviesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		int m_id=Integer.parseInt(request.getParameter("id"));
		MoviesDao md=new MoviesDao();
		Movies updateMovies=md.queryById(m_id);
		request.setAttribute("updateMovies", updateMovies);
		request.getRequestDispatcher("moviesdetail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");	
		int m_id=Integer.parseInt(request.getParameter("m_id"));
	    String m_name=request.getParameter("m_name");
	    String m_company=request.getParameter("m_company");
	    String m_time=request.getParameter("m_time");
	    String m_detail=request.getParameter("m_detail");
	    String m_actor=request.getParameter("m_actor");
	    String m_canceltime=request.getParameter("m_canceltime");
	    String m_country=request.getParameter("m_country");
	    String m_language=request.getParameter("m_language");
	    String m_mtime=request.getParameter("m_mtime");
	    String m_com=request.getParameter("textarea");
	    MoviesDao md=new MoviesDao();
	    Movies movies=new Movies(m_id, m_name, m_time, m_company, m_detail, m_actor, m_canceltime, m_country, m_language, m_mtime, m_com);
	    movies.setM_id(m_id);
	    md.updateMovies(movies);
	    response.sendRedirect("moviesList");
	    //System.out.println(m_com);
	}

}
