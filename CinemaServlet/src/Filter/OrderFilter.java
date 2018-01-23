package Filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.model.User;
import org.model.UserDetail;
import org.unti.Mark;

/**
 * Servlet Filter implementation class OrderFilter
 */
public class OrderFilter implements Filter {

    /**
     * Default constructor. 
     */
    public OrderFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session=req.getSession();
		
		UserDetail user=(UserDetail)session.getAttribute(Mark.USER);
		if(user!=null ){
			chain.doFilter(request, response);
			
		}else{
			PrintWriter ot=response.getWriter();
			 ot.print("<script type=''text/javascript>alert('please login first!');window.location.href='../../login.jsp';</script>");
		}
		
		
	}
		

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
