package org.page;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.SeatDao;

/**
 * Servlet implementation class RoActionServlet
 */
public class RoActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoActionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter ot=response.getWriter();
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String time=request.getParameter("salary");
		String ti=request.getParameter("datepicker");
		//int seat=Integer.parseInt(request.getParameter("edu"));
		String m_id=request.getParameter("id");
		//String m_name=request.getParameter("m_name");
		//System.out.println(time);
		String [] a={"A","B","C","D","E","F","G"};
		String [] b={"1","2","3","4","5","6","7","8"};
		String timex=ti.replace("/", "");
		String st=timex+time;
		//System.out.println(st);
		//System.out.println(timex);
		//System.out.println(seat);
		//System.out.println(m_id);
		//System.out.println(st);
		//System.out.println(m_name);
		SeatDao sd=new SeatDao();
		boolean g=sd.queryByI(m_id, st);
		System.out.println(g);
		if(g!=false){
		for(int i=0;i<a.length;i++){
			String c=a[i];
			//System.out.println(c);
			for(int j=0;j<b.length;j++){
				String d=b[j];
				//System.out.println(d);
				String e=c+d;
				//System.out.println(e);
				sd.InsertByI(m_id,e,st);
				
				
			}
	}
	response.sendRedirect("moviesList");
		}
		else{
			ot.println("<script type='text/javascript'>alert('场次已经存在 请修改时间');window.location.href='moviesList';</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
