package org.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.model.OrderDetail;

public class OrderDao extends BaseDao{

	public void add(OrderDetail od){
		try {
			this.getConnection();
			String sql="insert into morder (m_id,s_seat,u_state,s_time,order_no,m_price,m_ma,u_id) values(?,?,?,?,?,?,?,?)";
			pre=con.prepareStatement(sql);
			pre.setString(1,od.getM_id());
			pre.setString(2,od.getS_seat());
			pre.setInt(3,od.getU_state());
			pre.setString(4,od.getS_time());
			pre.setString(5,od.getOrder_no());
			pre.setInt(6,od.getM_price());
			pre.setInt(7,od.getM_ma());
			pre.setString(8, od.getU_id());
			pre.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<OrderDetail> queryByOI(String u_id,String order_no){
		List<OrderDetail> orderList=new ArrayList<OrderDetail>();
		try {
			this.getConnection();
			String sql="select * from morder where u_id=? and order_no=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, u_id);
			pre.setString(2, order_no);
			re=pre.executeQuery();
			while(re.next()){
				OrderDetail od=this.queryByResult(re);
				orderList.add(od);
				
			}
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}
	public List<OrderDetail> queryById(String u_id){
		List<OrderDetail> orList=new ArrayList<OrderDetail>();
		try {
			this.getConnection();
			String sql="select * from morder where u_id=?";
			pre=con.prepareStatement(sql);
			pre.setString(1, u_id);
			re=pre.executeQuery();
			while(re.next()){
				OrderDetail od=this.queryByResult(re);
				orList.add(od);
				
			}
			this.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orList;
		
}
		public List<OrderDetail> queryByAll(){
			List<OrderDetail> orList=new ArrayList<OrderDetail>();
			try {
				this.getConnection();
				String sql="select * from morder ";
				pre=con.prepareStatement(sql);
				re=pre.executeQuery();
				while(re.next()){
					OrderDetail od=this.queryByResult(re);
					orList.add(od);
					
				}
				this.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return orList;
			
	}
	public OrderDetail queryByResult(ResultSet re) throws SQLException{
		String u_id=re.getString("u_id");
		String m_id=re.getString("m_id");
		String s_seat=re.getString("s_seat");
		int u_state=re.getInt("u_state");
		String s_time=re.getString("s_time");
		String order_no=re.getString("order_no");
		int m_price=re.getInt("m_price");
		int m_ma=re.getInt("m_ma");
		OrderDetail od=new OrderDetail(u_id, m_id, s_seat, u_state, s_time, order_no, m_price, m_ma);
		return od;
		
	}
	public static void main(String[] args) {
	;
		
	}
	
}
