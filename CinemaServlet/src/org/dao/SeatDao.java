package org.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.model.MovieSeat;
import org.model.RowDao;



public class SeatDao extends BaseDao {

	public void updateById(String m_id,String s_time,String s_seat){
		try {
			this.getConnection();
			String sql="update dtime set s_state=0 where m_id=? and s_time=? and s_seat=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, m_id);
			pre.setString(2, s_time);
			pre.setString(3, s_seat);
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public boolean queryByI(String m_id,String s_time){
		boolean stat = false;
		try {
			this.getConnection();
			String sql="select * from dtime where m_id=? and s_time=? and s_seat=? ";
			pre=con.prepareStatement(sql);
			pre.setString(1, m_id);
			pre.setString(2, s_time);
			pre.setString(3, "A2");
			
			re=pre.executeQuery();
			
			if(re!=null&&re.next()){
				stat=false;
				
			}
			else{
				stat=true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stat;
		
		
	}
	public List<MovieSeat> queryById(String m_id,String s_time){
		 List<MovieSeat> seatList=new ArrayList<MovieSeat>();
		try {
			this.getConnection();
			String sql="select * from dtime where m_id=? and s_time=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, m_id);
			pre.setString(2, s_time);
			
			re=pre.executeQuery();
			while(re.next()){
				MovieSeat seat=this.queryByResult(re);
				seatList.add(seat);
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return seatList;
	}
	

	public void InsertByI(String m_id,String s_seat,String st){
		try {
			this.getConnection();
			String sql="insert into dtime (m_id,s_seat,s_time,s_state) values(?,?,?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1,m_id);
			pre.setString(2, s_seat);
			pre.setString(3, st);
			pre.setString(4, "1");
			pre.executeUpdate();
			this.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public MovieSeat queryByResult(ResultSet re) throws SQLException{
		String m_id=re.getString("m_id");
		String s_time=re.getString("s_time");
		String s_seat=re.getString("s_seat");
		String s_state=re.getString("s_state");
		MovieSeat seat=new MovieSeat(m_id, s_time, s_seat, s_state);
		return seat;
	}
}
