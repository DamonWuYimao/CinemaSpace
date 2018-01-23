package org.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.model.Comment;
import org.model.Movies;

public class CommentDao extends BaseDao{
	
	
	public void addComment(Comment comment){
		try {
			this.getConnection();
			String sql="insert into comment (m_id,u_id,comment,c_time) values (?,?,?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1, comment.getM_id());
			pre.setString(2, comment.getU_id());
			pre.setString(3, comment.getComment());
			pre.setString(4, this.time());
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
    public List<Comment> queryById(int m_id){
    	List<Comment> CommnetList=new ArrayList<Comment>();
    	try {
			this.getConnection();
			String sql="select * from comment where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setInt(1, m_id);
			re=pre.executeQuery();
			while(re.next()){
				Comment com=this.queryFromRe(re);
				CommnetList.add(com);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
    	return CommnetList;
    }
    public List<Comment> queryByAll(){
    	List<Comment> ComList=new ArrayList<Comment>();
    	try {
			this.getConnection();
			String sql="select * from comment";
			pre=con.prepareStatement(sql);
			
			re=pre.executeQuery();
			while(re.next()){
				Comment com=this.queryFromRe(re);
				ComList.add(com);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
    	return ComList;
    }
    public Comment queryFromRe(ResultSet re) throws SQLException{
    	String m_id=re.getString("m_id");
    	String u_id=re.getString("u_id");
    	String comment=re.getString("comment");
    	String c_time=re.getString("c_time");
    	Comment com=new Comment(u_id, m_id, comment, c_time);
    	return com;
    	
    }
	public String time(){
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//可以方便地修改日期格式


		String hehe = dateFormat.format( now ); 
	
		return hehe;
	}
	
	

}
