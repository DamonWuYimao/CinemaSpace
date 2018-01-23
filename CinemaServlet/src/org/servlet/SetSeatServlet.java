package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.SeatDao;
import org.model.MovieSeat;

/**
 * Servlet implementation class SetSeatServlet
 */
public class SetSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetSeatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter ot=response.getWriter();
		String m_id=request.getParameter("m_id");
		String s_time=request.getParameter("s_time");
		SeatDao sd=new SeatDao();
		List<MovieSeat> seatList=null;
		seatList=sd.queryById(m_id,s_time);
		//String orderNo=Calendar.getInstance().getTime()+""+s_time;
		//System.out.println(seat.getS_seat());
		//System.out.println(seat.getS_state());
		//System.out.println(seatList);
		if(null == seatList || seatList.size() ==0 ){
			ot.println("<script type='text/javascript'>alert('影院还未添加该场次，请重新选择，');window.location.href='IndexImg';</script>");
		}else{
			
			request.setAttribute("seatList", seatList);
			request.setAttribute("m_id", m_id);
			request.setAttribute("s_time", s_time);
			
			request.getRequestDispatcher("book2.jsp").forward(request, response);
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
