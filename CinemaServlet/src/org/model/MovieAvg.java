package org.model;

public class MovieAvg {
	private String m_id;
	private String m_avg;
	private int m_count;
	
	
	public MovieAvg(String m_id,int m_count) {
		super();
		
		this.m_id=m_id;
		this.m_count=m_count;
	}
	
	public MovieAvg( String m_avg) {
		super();
		
		this.m_avg = m_avg;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_avg() {
		return m_avg;
	}
	public void setM_avg(String m_avg) {
		this.m_avg = m_avg;
	}
	public int getM_count() {
		return m_count;
	}
	public void setM_count(int m_count) {
		this.m_count = m_count;
	}
	

}
