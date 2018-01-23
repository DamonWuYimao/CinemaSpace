 package org.user;

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
import org.model.UserDetail;
import org.unti.Mark;
import org.dao.MoviesDao;
import org.dao.UserDao;
import org.dao.UserDetailDao;


public class UserTaskServlet extends HttpServlet{

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
		List<UserDetail> userList=null;
		UserDao ud=new UserDao();
		if(order!=null){
			userList=ud.queryByPage(nowPage, Mark.PAGESIZE,order,flag);
		}
		else {
			userList=ud.queryByPage(nowPage, Mark.PAGESIZE);
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
		int userCount=ud.queryCount();
		int totalPage=(userCount%Mark.PAGESIZE==0) ? userCount/Mark.PAGESIZE:userCount/Mark.PAGESIZE+1;
		pager.setPageCount(totalPage);
		pager.setItemCount(userCount);
		
		int prePage,nextPage;
		prePage=(nowPage==1) ? 1:(nowPage-1);
		nextPage=(nowPage==totalPage) ? nowPage:(nowPage+1);
		pager.setPrePage(prePage);
		pager.setNextPage(nextPage);
		//5
		
		req.setAttribute("flag", flag);
		req.setAttribute("userList", userList);
		req.setAttribute("pager", pager);
		req.setAttribute("params", params);
		req.getRequestDispatcher("/admin/tasks.jsp").forward(req, resp);
        System.out.println(userCount);

		
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	super.doPost(req, resp);
	}
   
	
}
