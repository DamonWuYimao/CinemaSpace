package org.model;

public class MovieSeat {
	private String m_id;
	private String s_time;
	private String s_seat;
	private String s_state;
	private String m_name;
	
	
	
	
	public MovieSeat() {
		super();
	}
	
	public MovieSeat(String m_id, String s_time, String s_seat, String s_state) {
		super();
		this.m_id = m_id;
		this.s_time = s_time;
		this.s_seat = s_seat;
		this.s_state = s_state;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
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
	public String getS_state() {
		return s_state;
	}
	public void setS_state(String s_state) {
		this.s_state = s_state;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	
	

}
