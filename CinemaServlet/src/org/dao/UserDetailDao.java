package org.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.model.User;
import org.model.UserDetail;

public class UserDetailDao extends BaseDao{
	
	public void addUser(UserDetail ud){
		try {
			this.getConnection();
			String sql="insert into udetail (u_id,u_pass,u_name,u_address,u_phone,u_age,u_mail,u_addtime) values (?,?,?,?,?,?,?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1,ud.getU_id());
			pre.setString(2, ud.getU_pass());
			pre.setString(3, ud.getU_name());
			pre.setString(4, ud.getAddress());
			pre.setString(5, ud.getPhone());
			pre.setInt(6, ud.getAge());
			pre.setString(7, ud.getU_mail());
			pre.setString(8, this.time());
			pre.executeUpdate();
			this.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String time(){
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//可以方便地修改日期格式


		String hehe = dateFormat.format( now ); 
	
		return hehe;
	}
	public void linkUser(User user){
		try {
			this.getConnection();
			String sql="insert into user (u_id,u_pass,u_name,u_mail) values (?,?,?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1, user.getU_id());
			pre.setString(2, user.getU_pass());
			pre.setString(3, user.getU_name());
			pre.setString(4, user.getU_mail());
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void logUser(UserDetail ud,String u_id){
		try {
			this.getConnection();
			String sql="update udetail set u_ip=?,u_time=? where u_id=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, ud.getU_ip());
			pre.setString(2, ud.getU_time());
			pre.setString(3, u_id);
			pre.executeUpdate();
			this.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void updateUser(UserDetail userDetail){
		try {
			this.getConnection();
			String sql="update udetail set u_id=?,u_pass=?,u_name=?,u_phone=?,u_age=?,u_mail=?  where u_id=? ";
			pre=con.prepareStatement(sql);
			pre.setString(1, userDetail.getU_id());
			pre.setString(2, userDetail.getU_pass());
			pre.setString(3, userDetail.getU_name());
			pre.setString(4, userDetail.getPhone());
			pre.setInt(5, userDetail.getAge());
			pre.setString(6, userDetail.getU_mail());
			pre.setString(7, userDetail.getU_id());
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public UserDetail queryById(String u_id){
		UserDetail userDetail=null;
		try {
			this.getConnection();
			String sql="Select * from udetail where u_id=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, u_id);
			re=pre.executeQuery();
			if(re.next()){
				userDetail=this.queryFromRe(re);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userDetail;
	} 
	public UserDetail queryFromRe(ResultSet re) throws SQLException{
		String u_id=re.getString("u_id");
		String u_pass=re.getString("u_pass");
		String u_name=re.getString("u_name");
		String u_address=re.getString("u_address");
		String u_phone=re.getString("u_phone");
		int u_age=re.getInt("u_age");
		String u_mail=re.getString("u_mail");
		String u_ip=re.getString("u_ip");
		String u_time=re.getString("u_time");
		String u_addtime=re.getString("u_addtime");
		UserDetail userDetail=new UserDetail(u_id, u_pass, u_name, u_address, u_phone, u_age, u_mail, u_ip, u_time,u_addtime);
		return userDetail;
	}

}
