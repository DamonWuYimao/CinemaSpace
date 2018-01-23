package org.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.model.MovieAvg;
import org.model.MovieSeat;
import org.model.Movies;

public class MoviesDao extends BaseDao  {
	public void addMovies(Movies movies){
		try {
			this.getConnection();
			String sql="insert into movie (m_name,m_time,m_company,m_detail,m_addtime) values (?,?,?,?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1, movies.getM_name());
			pre.setString(2, movies.getM_time());
			pre.setString(3, movies.getM_company());
			pre.setString(4, movies.getM_detail());
			pre.setString(5, this.time());
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Movies> queryByMovie(String m_name){
		   List<Movies> mList=new ArrayList<Movies>();
		   try {
			this.getConnection();
			 
			 String sql="Select * from movie where m_name like '%"+m_name+"%'";
			 pre=con.prepareStatement(sql);
			System.out.println(sql);
			 re=pre.executeQuery();
			 while(re.next()){
				 Movies movies=this.queryFromResult(re);
				 
				 //加入
				 mList.add(movies);
			 }
			 this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return mList;
		
	}

	public List<Movies> queryByPage(int nowPage,int pageSize){
		   List<Movies> moviesList=new ArrayList<Movies>();	
		   try {
			this.getConnection();
			 
			 String sql="SELECT * FROM movie ORDER BY movie.m_time ASC LIMIT ?, ?";
			 pre=con.prepareStatement(sql);
			 pre.setInt(1, (nowPage-1)*pageSize);
			 pre.setInt(2, pageSize);
			 re=pre.executeQuery();
			 while(re.next()){
				 Movies movies=this.queryFromResult(re);
				 
				 //加入
				 moviesList.add(movies);
			 }
			 this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return moviesList;
		
	}
	
	public List<Movies> queryByPage(int nowPage,int pageSize,String order,String flag){
		   List<Movies> moviesList=new ArrayList<Movies>();
		   try {
			this.getConnection();
			 
			 String sql="SELECT * FROM movie ORDER BY "+order+" "+flag+" LIMIT ?, ?";
			 pre=con.prepareStatement(sql);
			 pre.setInt(1, (nowPage-1)*pageSize);
			 pre.setInt(2, pageSize);
			 re=pre.executeQuery();
			 while(re.next()){
				 Movies movies=this.queryFromResult(re);
				 
				 //加入
				 moviesList.add(movies);
			 }
			 this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return moviesList;
		
	}
	public List<Movies> queryByPoint(){
		   List<Movies> topList=new ArrayList<Movies>();
		   try {
			this.getConnection();
			 
			 String sql="SELECT * FROM movie LIMIT 6 ";
			 pre=con.prepareStatement(sql);

			 re=pre.executeQuery();
			 while(re.next()){
				 Movies movies=this.queryFromResult(re);
				 
				 //加入
				 topList.add(movies);
			 }
			 this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		return topList;
		
	}
	public void updatePic(int m_id,String fileName){
		try {
			this.getConnection();
			String sql="update movie set m_img=? where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, fileName);
			pre.setInt(2, m_id);
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public  MovieAvg queryAvg(int m_id){
		MovieAvg m_avg=null;
		try {
			this.getConnection();
			String sql="SELECT round(AVG(m_point),1) from m_avg where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setInt(1, m_id);
			re=pre.executeQuery();
			while(re.next()){
				 m_avg=this.queryByResult(re);
				
			}
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return m_avg;
		
	}
	public MovieAvg queryBycount(){
		MovieAvg count=null;
		try {
			this.getConnection();
			String sql="SELECT count(*),m_id from m_avg GROUP BY m_id LIMIT 6";
			pre=con.prepareStatement(sql);
			re=pre.executeQuery();
			while(re.next()){
				count=this.queryByRe(re);
				
				
			}
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	public MovieAvg queryByRe(ResultSet re) throws SQLException{
		
		String m_id=re.getString("m_id");
		int m_count=re.getInt("count(*)");
		MovieAvg count=new MovieAvg(m_id,m_count);
		return count;
	}
	public void updateAvg(String s,String intHot){
		try {
			this.getConnection();
			String sql="insert into m_avg (m_id,m_point) values (?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1, s);
			pre.setString(2, intHot);
			pre.executeUpdate();
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public Movies queryById(int m_id){	
    Movies movies=null;
		try {
			this.getConnection();
			String sql="select * from movie where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setInt(1, m_id);
			re=pre.executeQuery();
			if(re.next()){
				movies=this.queryFromResult(re);
				 
				 //加入
				
			 }
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movies;
	}
	
	public void addPoint(int m_point,int m_id){
		try {
			this.getConnection();
			String sql="insert into m_avg m_point=? where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setInt(1, m_point);
			pre.setInt(2, m_id);
			pre.executeUpdate();
			this.close();
			
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Movies queryFromResult(ResultSet re) throws SQLException{
		int m_id=re.getInt("m_id");
		String m_name=re.getString("m_name");
		String m_time=re.getString("m_time");
		String m_company=re.getString("m_company");
		String m_detail=re.getString("m_detail");
		String m_addtime=re.getString("m_addtime");
		String m_actor=re.getString("m_actor");
		String m_canceltime=re.getString("m_canceltime");
		String m_country=re.getString("m_country");
		String m_language=re.getString("m_language");
		String m_mtime=re.getString("m_mtime");
		String m_img=re.getString("m_img");
		String s_img=re.getString("s_img");
		String l_img=re.getString("l_img");
		String x_img=re.getString("x_img");
		String m_com=re.getString("m_com");
		Movies movies=new Movies(m_id, m_name, m_time, m_company, m_detail,m_addtime, m_actor, m_canceltime, m_country, m_language, m_mtime,m_img,s_img,l_img,x_img,m_com);
		return movies;
	}
	public MovieAvg queryByResult(ResultSet re) throws SQLException{
		
		String m_avg=re.getString("round(AVG(m_point),1)");
		MovieAvg movieAvg=new MovieAvg(m_avg);
		return movieAvg;
	}
	public int queryCount(){
		int count=0;
		try {
			this.getConnection();
			String sql="select count(m_id) from movie";
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
	public void updateMovies(Movies movies){
		try {
			this.getConnection();
			String sql="update movie set m_name=?,m_time=?,m_company=?,m_detail=?,m_actor=?,m_canceltime=?,m_country=?,m_language=?,m_mtime=?,m_com=? where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, movies.getM_name());
			pre.setString(2, movies.getM_time());
			pre.setString(3, movies.getM_company());
			pre.setString(4, movies.getM_detail());
			pre.setString(5, movies.getM_actor());
			pre.setString(6, movies.getM_canceltime());
			pre.setString(7, movies.getM_country());
			pre.setString(8, movies.getM_language());
			pre.setString(9, movies.getM_mtime());
			pre.setString(10, movies.getM_com());
			pre.setInt(11, movies.getM_id());
			
			pre.executeUpdate();
			this.close();
			//System.out.println(sql);
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
	public void del(int m_id){
		try {
			this.getConnection();
			String sql="delete  from movie where m_id=?";
			pre=con.prepareStatement(sql);
			pre.setInt(1, m_id);
			pre.executeUpdate();
			this.close();
      } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
