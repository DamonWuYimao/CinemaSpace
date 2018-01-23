package org.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.MoviesDao;
import org.model.Movies;

/**
 * Servlet implementation class AddMoviesServlet
 */
public class AddMoviesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMoviesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.getRequestDispatcher("projects.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String m_name=request.getParameter("name");
		String m_time=request.getParameter("time");
		String m_company=request.getParameter("company");
		String m_detail=request.getParameter("detail");
		MoviesDao md=new MoviesDao();
		Movies movies=new Movies(m_name, m_time, m_company, m_detail);
		md.addMovies(movies);
		response.sendRedirect("moviesList");
		
	}

}
