package org.servlet;

import java.awt.ItemSelectable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.MoviesDao;
import org.dao.OrderDao;
import org.dao.SeatDao;
import org.dao.SendMail;
import org.model.OrderDetail;
import org.model.User;
import org.model.UserDetail;
import org.unti.Mark;

/**
 * Servlet implementation class TicketActionServlet
 */
public class TicketActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TicketActionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter ot=response.getWriter();
		UserDetail user=(UserDetail)request.getSession().getAttribute(Mark.USER);
		String u_mail=user.getU_mail();
		String s_sits=request.getParameter("choosen-sits");
		int m_price=Integer.parseInt(request.getParameter("choosen-cost"));
        int m_number=Integer.parseInt(request.getParameter("choosen-number"));
		
		//String  s_number=request.getParameter("choosen-number--cheap");
		String m_id=request.getParameter("m_id");
		String s_time=request.getParameter("s_time");
		int b=m_number/2;
		String[] items;
		s_sits+=" ";
		items = s_sits.split(",");
		String orderNo=Calendar.getInstance().getTime().getTime()+"";
		int a=(m_price/b);
		
	    SeatDao sd=new SeatDao();
	    OrderDao od=new OrderDao();
		
		if(items!=null){
			StringBuilder builder=new StringBuilder();
			for(int i=0;i<items.length/2;i++){
				String item=items[i];
	            sd.updateById(m_id, s_time, item);
	            OrderDetail odd=new OrderDetail();
	            odd.setM_id(m_id);
	            odd.setS_seat(item);
	            odd.setU_state(0);
	            odd.setS_time(s_time);
	            odd.setOrder_no(orderNo);
	            odd.setM_price(a);
	            
	            Random random = new Random();
	            int x = random.nextInt(899999);
	            odd.setM_ma(x);
	            odd.setU_id(user.getU_id());
	            od.add(odd);
	           
				String neiro="您的订单号为"+orderNo+"您的座位是"+item+"您的观影时间是"+s_time+"您的取票码是"+x+"----------------------------";
				builder.append(neiro);
			
			}
			 String subject="恭喜您订票成功";
			 String s=builder.toString();
			
			SendMail sm=new SendMail(u_mail, subject, s);	
			sm.send();
			
			response.sendRedirect("buyticket?orderNo="+orderNo+"&u_id="+user.getU_id());
			//return;
		}
		else{
			ot.println("<script type=''text/javascript>alert('please select the items ');window.location.href='cartList';</script>");
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
