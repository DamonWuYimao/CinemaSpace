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
import org.unti.Mark;

/**
 * Servlet Filter implementation class Userfilter
 */
public class Userfilter implements Filter {

    /**
     * Default constructor. 
     */
    public Userfilter() {
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
		
		User user=(User)session.getAttribute(Mark.USER);
		if(user!=null && user.getU_flag()==1){
			chain.doFilter(request, response);
			
		}else{
			PrintWriter ot=response.getWriter();
			 ot.print("<script type=''text/javascript>alert('please login first!');window.location.href='../AdminLogin.jsp';</script>");
		}
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
