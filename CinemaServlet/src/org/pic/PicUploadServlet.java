package org.pic;

import java.util.List;
import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.dao.MoviesDao;
import org.model.Movies;



/**
 * Servlet implementation class PicUploadServlet
 */
public class PicUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PicUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int m_id=Integer.parseInt(request.getParameter("m_id"));
		request.setAttribute("m_id", m_id);
		request.getRequestDispatcher("picUpload.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1������һ��DiskFileItemFactory����
		PrintWriter ot=response.getWriter();
		 int m_id=Integer.parseInt(request.getParameter("id"));
          DiskFileItemFactory factory = new DiskFileItemFactory();
         //2������һ���ļ��ϴ�������
		   ServletFileUpload upload = new ServletFileUpload(factory);
		   String path=request.getRealPath("//Cinema/images/movie");
		   File file=new File(path);
		   if(!file.exists()){
			   file.mkdir();
		   }
		  
		   String mv="movies-sample";
		   String NewFileName="";
		  //3 ͨ��servlet��ȡ�ϴ��ļ����е���Ϣ
		   try {
			List<FileItem> itemList=upload.parseRequest(request);
			
			for(FileItem item:itemList){
				if(item.isFormField()){
					//String get=item.getString("utf-8");
				   // m_id=Integer.parseInt(get);
					
					
				}
					
				
				else{
					String filename = item.getName();
					String sfs=filename.substring(filename.lastIndexOf("."));
				    NewFileName=mv+m_id+sfs;
					File file2=new File(path+"//"+NewFileName);
					System.out.println(path+"//"+NewFileName);
					item.write(file2);
				}
			}
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		   MoviesDao md=new MoviesDao();
		   md.updatePic(m_id, NewFileName);
	   	
		   response.sendRedirect("moviesList");
		   ot.print("<script type='text/javascript'>alert('123');window.location.href='#';</script>");
		}
	
	

}
