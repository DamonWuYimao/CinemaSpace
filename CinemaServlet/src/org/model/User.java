package org.model;

public class User {

	private String u_id;
	private String u_name;
	private String u_pass;
	private int u_flag;

	private String u_mail;

	
	
	
	public User(){
		
	}
	public User(String u_id, String u_name, String u_pass, int u_flag,String u_mail) {
		super();
		this.u_id = u_id;
		this.u_name = u_name;
		this.u_pass = u_pass;
		this.u_flag = u_flag;
		this.u_mail=u_mail;
	}
	
	
	
	public String getU_mail() {
		return u_mail;
	}
	public void setU_mail(String u_mail) {
		this.u_mail = u_mail;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pass() {
		return u_pass;
	}
	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
	}
	public int getU_flag() {
		return u_flag;
	}
	public void setU_flag(int u_flag) {
		this.u_flag = u_flag;
	}
	
}
