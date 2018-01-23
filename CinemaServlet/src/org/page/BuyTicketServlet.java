package org.page;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.MoviesDao;
import org.dao.OrderDao;
import org.model.OrderDetail;
import org.model.UserDetail;
import org.unti.Mark;

/**
 * Servlet implementation class BuyTicketServlet
 */
public class BuyTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDetail user=(UserDetail)request.getSession().getAttribute(Mark.USER);
		String u_id=user.getU_id();
		
		String orderNo=request.getParameter("orderNo");
		System.out.println(u_id);
		System.out.println(orderNo);
		OrderDao od=new OrderDao();
		List<OrderDetail> orderList=new ArrayList<OrderDetail>();
        orderList=od.queryByOI(u_id, orderNo);
        System.out.println(orderList);
        request.setAttribute("orderList", orderList);
       
        
		//String orderNo=Calendar.getInstance().getTime().getTime()+"";
		
	    
	   
		request.getRequestDispatcher("BuyTicket.jsp").forward(request, response);
		
		
		
		//System.out.println(items[0]);
		//System.out.println(items.length/2);
		//System.out.println(m_price);
		//System.out.println(s_number);
		//System.out.println(s_sits);
		//System.out.println(orderNo);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
