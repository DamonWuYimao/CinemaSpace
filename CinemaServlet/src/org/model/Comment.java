package org.model;

public class Comment {
	private String u_id;
	private String m_id;
	private String comment;
	private String c_time;
	
	
	public Comment(){
		
	}
	
	
	public Comment(String u_id, String m_id, String comment, String c_time) {
		super();
		this.u_id = u_id;
		this.m_id = m_id;
		this.comment = comment;
		this.c_time = c_time;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getC_time() {
		return c_time;
	}
	public void setC_time(String c_time) {
		this.c_time = c_time;
	}
	
	
	

}
