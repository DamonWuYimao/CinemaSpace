package org.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.model.Movies;
import org.model.User;
import org.model.UserDetail;

public class UserDao extends BaseDao {
	public User queryById(String userId){
		User user=null;
	  try {
		this.getConnection();
		String sql="select * from user where u_id=?";
		pre=con.prepareStatement(sql);
		pre.setString(1, userId);
		re=pre.executeQuery();
		if(re.next()){
			String u_name=re.getString("u_name");
			String u_pass=re.getString("u_pass");
			int u_flag=re.getInt("u_flag");
			String u_mail=re.getString("u_mail");
			user=new User(userId,u_name,u_pass,u_flag,u_mail);
			
		}
		this.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return user;
	}
	public UserDetail queryByUId(String userId){
		UserDetail uDetail=null;
	  try {
		this.getConnection();
		String sql="select * from udetail where u_id=?";
		pre=con.prepareStatement(sql);
		pre.setString(1, userId);
		re=pre.executeQuery();
		if(re.next()){
			String u_name=re.getString("u_name");
			String u_pass=re.getString("u_pass");
			String u_address=re.getString("u_address");
			String u_phone=re.getString("u_phone");
			int u_age=re.getInt("u_age");
			String u_addtime=re.getString("u_addtime");
			String u_mail=re.getString("u_mail");
			uDetail=new UserDetail(userId, u_pass, u_name, u_address, u_phone, u_age, u_mail, u_addtime);
			
		}
		this.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return uDetail;
	}
	
	public List<UserDetail> queryByPage(int nowPage,int pageSize,String order,String flag){
		   List<UserDetail> userList=new ArrayList<UserDetail>();
		   try {
			this.getConnection();
			 
			 String sql="SELECT * FROM udetail ORDER BY "+order+" "+flag+" LIMIT ?, ?";
			 pre=con.prepareStatement(sql);
			 pre.setInt(1, (nowPage-1)*pageSize);
			 pre.setInt(2, pageSize);
			 re=pre.executeQuery();
			 while(re.next()){
				 UserDetail ud=this.queryFromResult(re);
				 
				 //加入
				 userList.add(ud);
			 }
			 this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return userList;
		
	}
	public UserDetail queryByUid(String u_id){	
	    UserDetail ud=null;
			try {
				this.getConnection();
				String sql="select * from udetail where u_id=?";
				pre=con.prepareStatement(sql);
				pre.setString(1, u_id);
				re=pre.executeQuery();
				if(re.next()){
					ud=this.queryFromResult(re); 
					 //加入
				 }
				this.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ud;
		}
	public UserDetail queryFromResult(ResultSet re) throws SQLException{
	 String u_id=re.getString("u_id");
	 String u_mail=re.getString("u_mail");
	 String u_addtime=re.getString("u_addtime");
	 String u_time=re.getString("u_time");
	 String u_ip=re.getString("u_ip");
	 UserDetail ud=new UserDetail(u_id, u_mail, u_addtime, u_time, u_ip);
	 return ud;
	 
		
	}
	
	public int queryCount(){
		int count=0;
		try {
			this.getConnection();
			String sql="select count(u_id) from udetail";
			pre=con.prepareStatement(sql);
			re=pre.executeQuery();
			if(re.next()){
				count=re.getInt(1);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
		
		
		
		
	}
	public List<UserDetail> queryByPage(int nowPage,int pageSize){
		   List<UserDetail> userList=new ArrayList<UserDetail>();
		   try {
			this.getConnection();
			 
			 String sql="SELECT * FROM udetail ORDER BY udetail.u_time ASC LIMIT ?, ?";
			 pre=con.prepareStatement(sql);
			 pre.setInt(1, (nowPage-1)*pageSize);
			 pre.setInt(2, pageSize);
			 re=pre.executeQuery();
			 while(re.next()){
				 UserDetail ud=this.queryFromResult(re);
				 
				 //加入
				 userList.add(ud);
			 }
			 this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return userList;
		
	}
}
