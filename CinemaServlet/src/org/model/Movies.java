package org.model;



public class Movies {

	private int m_id;
	private String m_name;
	private String m_time;
	private String 	m_company;
	private String m_detail;
	private String m_img;
	private String m_addtime;
	private String m_actor;
	private String m_canceltime;
	private String m_country;
	private String m_language;
	private String m_mtime;
	private int m_point;
	private String s_img;
	private String l_img;
	private String x_img;
	private String m_com;
	
	public Movies(){
		
		
	}
	public Movies(String m_name, String m_time, String m_company, String m_detail) {
		super();
		
		this.m_name = m_name;
		this.m_time = m_time;
		this.m_company = m_company;
		this.m_detail = m_detail;
		
	}
	public Movies(int m_id, String m_name, String m_time, String m_company, String m_detail,String m_actor,String m_canceltime,String m_country,String m_language,String m_mtime,String m_com) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_time = m_time;
		this.m_company = m_company;
		this.m_detail = m_detail;
		this.m_actor=m_actor;
		this.m_canceltime=m_canceltime;
		this.m_country=m_country;
		this.m_language=m_language;
		this.m_mtime=m_mtime;
		this.m_com=m_com;
		
		
	}
	public Movies(int m_id, String m_name, String m_time, String m_company, String m_detail,String m_addtime,String m_actor,String m_canceltime,String m_country,String m_language,String m_mtime,String m_img,String s_img,String l_img,String x_img,String m_com) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_time = m_time;
		this.m_company = m_company;
		this.m_detail = m_detail;
		this.m_addtime=m_addtime;
		this.m_actor=m_actor;
		this.m_canceltime=m_canceltime;
		this.m_country=m_country;
		this.m_language=m_language;
		this.m_mtime=m_mtime;
		this.m_img=m_img;
		this.s_img=s_img;
		this.l_img=l_img;
		this.x_img=x_img;
		this.m_com=m_com;
		
	}
	public Movies(int m_id, String m_name, String m_time, String m_company, String m_detail, String m_addtime,String m_img) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_time = m_time;
		this.m_company = m_company;
		this.m_detail = m_detail;
		this.m_addtime = m_addtime;
		this.m_img=m_img;
	}
	
	
	
	
	public String getX_img() {
		return x_img;
	}
	public void setX_img(String x_img) {
		this.x_img = x_img;
	}

	public String getM_com() {
		return m_com;
	}
	public void setM_com(String m_com) {
		this.m_com = m_com;
	}
	public String getL_img() {
		return l_img;
	}
	public void setL_img(String l_img) {
		this.l_img = l_img;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	public String getM_actor() {
		return m_actor;
	}
	public void setM_actor(String m_actor) {
		this.m_actor = m_actor;
	}
	public String getM_canceltime() {
		return m_canceltime;
	}
	public void setM_canceltime(String m_canceltime) {
		this.m_canceltime = m_canceltime;
	}
	public String getM_country() {
		return m_country;
	}
	public void setM_country(String m_country) {
		this.m_country = m_country;
	}
	public String getM_language() {
		return m_language;
	}
	public void setM_language(String m_language) {
		this.m_language = m_language;
	}
	public String getM_mtime() {
		return m_mtime;
	}
	public void setM_mtime(String m_mtime) {
		this.m_mtime = m_mtime;
	}
	public String getM_addtime() {
		return m_addtime;
	}
	public void setM_addtime(String m_addtime) {
		this.m_addtime = m_addtime;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_time() {
		return m_time;
	}
	public void setM_time(String m_time) {
		this.m_time = m_time;
	}
	public String getM_company() {
		return m_company;
	}
	public void setM_company(String m_company) {
		this.m_company = m_company;
	}
	public String getM_detail() {
		return m_detail;
	}
	public void setM_detail(String m_detail) {
		this.m_detail = m_detail;
	}
	public String getM_img() {
		return m_img;
	}
	public void setM_img(String m_img) {
		this.m_img = m_img;
	}
	public String getS_img() {
		return s_img;
	}
	public void setS_img(String s_img) {
		this.s_img = s_img;
	}
	
	
}
