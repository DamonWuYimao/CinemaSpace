package org.model;

public class OrderDetail {
	private String u_id;
	private String m_id;
	private String s_seat;
	private int u_state;
	private String s_time;
	private String order_no;
	private int m_price;
	private String m_name;
	private int m_ma;
	
	
	
	public OrderDetail(){
		
	}
	public OrderDetail(String u_id, String m_id, String s_seat, int u_state, String s_time, String order_no,
			int m_price, int m_ma) {
		super();
		this.u_id = u_id;
		this.m_id = m_id;
		this.s_seat = s_seat;
		this.u_state = u_state;
		this.s_time = s_time;
		this.order_no = order_no;
		this.m_price = m_price;
		
		this.m_ma = m_ma;
	}
	
	public OrderDetail(String u_id, String m_id, String s_seat, int u_state, String s_time, String order_no,
			int m_price, String m_name, int m_ma) {
		super();
		this.u_id = u_id;
		this.m_id = m_id;
		this.s_seat = s_seat;
		this.u_state = u_state;
		this.s_time = s_time;
		this.order_no = order_no;
		this.m_price = m_price;
		this.m_name = m_name;
		this.m_ma = m_ma;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getS_seat() {
		return s_seat;
	}
	public void setS_seat(String s_seat) {
		this.s_seat = s_seat;
	}
	public int getU_state() {
		return u_state;
	}
	public void setU_state(int u_state) {
		this.u_state = u_state;
	}
	public String getS_time() {
		return s_time;
	}
	public void setS_time(String s_time) {
		this.s_time = s_time;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public int getM_price() {
		return m_price;
	}
	public void setM_price(int m_price) {
		this.m_price = m_price;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getM_ma() {
		return m_ma;
	}
	public void setM_ma(int m_ma) {
		this.m_ma = m_ma;
	}
	
	
	

}
