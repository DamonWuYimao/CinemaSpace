package org.page;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.CommentDao;
import org.dao.MoviesDao;
import org.model.Comment;
import org.model.MovieAvg;
import org.model.Movies;

/**
 * Servlet implementation class MoviePageServlet
 */
public class MoviePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoviePageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		int m_id=Integer.parseInt(request.getParameter("m_id"));
		MoviesDao md=new MoviesDao();
		Movies moviePage=md.queryById(m_id);
		
		MovieAvg movieAvg=md.queryAvg(m_id);
		request.setAttribute("movieAvg", movieAvg);
		CommentDao cd=new CommentDao();
		List<Comment> commentList=null;
		commentList=cd.queryById(m_id);
		request.setAttribute("commentList", commentList);
		//System.out.println(commentList);
		request.setAttribute("moviePage",moviePage);
		request.getRequestDispatcher("moviePage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
		
	}

}
