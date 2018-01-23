package org.dao;
import java.sql.*;	

public class BaseDao {

	 private String url="jdbc:mysql://127.0.0.1/cinema";
     private String driver = "com.mysql.jdbc.Driver";
     private String user = "root";  	
     private String password = "1234";
     protected Connection con;
     protected PreparedStatement pre;
     protected ResultSet re;
     
     public void getConnection() throws Exception{
    	 Class.forName(this.driver);
    	 this.con=DriverManager.getConnection(this.url,this.user,this.password);
     }
	public void close() throws Exception {
		if(this.re!=null){
			this.re.close();
		}
		if(this.con!=null){
			this.con.close();
		}
		if(this.pre!=null){
			this.pre.close();
		}
	}

}
