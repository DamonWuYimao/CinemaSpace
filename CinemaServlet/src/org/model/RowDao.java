package org.model;

public class RowDao {
	private String m_id;
	private String m_name;
	private String s_time;
	private String s_seat;
	
	
	
	
	public RowDao(){
		
	}
	public RowDao(String m_id, String m_name, String s_time, String s_seat) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.s_time = s_time;
		this.s_seat = s_seat;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getS_time() {
		return s_time;
	}
	public void setS_time(String s_time) {
		this.s_time = s_time;
	}
	public String getS_seat() {
		return s_seat;
	}
	public void setS_seat(String s_seat) {
		this.s_seat = s_seat;
	}
	
	
	

}
