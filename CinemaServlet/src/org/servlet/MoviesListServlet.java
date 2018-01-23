 	package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.RepaintManager;



import org.model.Pager;
import org.model.User;
import org.unti.Mark;
import org.dao.MoviesDao;
import org.model.MovieAvg;
import org.model.Movies;;

public class MoviesListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    //1
		Pager pager=new Pager();
		int nowPage=1;
	    //2
		String page=req.getParameter("page");
		if(page!=null){
			nowPage=Integer.parseInt(page);
		}
		pager.setNowPage(nowPage);
		pager.setPageSize(Mark.PAGESIZE);
		String flag="";
		flag=req.getParameter("flag");
		String order=req.getParameter("order");
		List<Movies> moviesList=null;
		MoviesDao md=new MoviesDao();
		if(order!=null){
			moviesList=md.queryByPage(nowPage, Mark.PAGESIZE,order,flag);
		}
		else {
			moviesList=md.queryByPage(nowPage, Mark.PAGESIZE);
		}
		//3

		
		
		if(page==null){
			if("".equals(flag) || flag==null){
				flag="desc";	
			}
			else{
				flag="";
			}
			
		}
		String params=req.getQueryString();
		if(params!=null){
			if(params.contains("page=")){
				params=params.substring(params.indexOf("&")+1);
			}
		}
	
		
		//req.setAttribute("hello","hello,world");
		
		//4
		int moviesCount=md.queryCount();
		int totalPage=(moviesCount%Mark.PAGESIZE==0) ? moviesCount/Mark.PAGESIZE:moviesCount/Mark.PAGESIZE+1;
		pager.setPageCount(totalPage);
		pager.setItemCount(moviesCount);
		
		int prePage,nextPage;
		prePage=(nowPage==1) ? 1:(nowPage-1);
		nextPage=(nowPage==totalPage) ? nowPage:(nowPage+1);
		pager.setPrePage(prePage);
		pager.setNextPage(nextPage);
		//5
		
		req.setAttribute("flag", flag);
		req.setAttribute("moviesList", moviesList);
		req.setAttribute("pager", pager);
		req.setAttribute("params", params);
		req.getRequestDispatcher("/admin/projects.jsp").forward(req, resp);
		
System.out.println(moviesCount);

		
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	super.doPost(req, resp);
	}
   
	
}
