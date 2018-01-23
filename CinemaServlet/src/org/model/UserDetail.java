package org.model;

public class UserDetail {
	private String u_id;
	private String u_pass;
	private String u_name;
	private String Address;
	private String Phone;
	private int Age;
	private String u_mail;
	private String u_ip;
	private String u_time;
	private String u_addtime;
	
	private int email_state;
	
	public UserDetail(){
		
		
	}

	public UserDetail(String u_ip,String u_time){
		this.u_ip=u_ip;
		this.u_time=u_time;
		
		
	}
	public UserDetail(String u_id,String u_mail,String u_addtime,String u_time,String u_ip){
		this.u_ip=u_ip;
		this.u_time=u_time;
		this.u_id=u_id;
		this.u_mail=u_mail;
		this.u_addtime=u_addtime;
		
		
	}
	
	
	
	public UserDetail(String u_id, String u_pass, String u_name, String phone, int age, String u_mail) {
		super();
		this.u_id = u_id;
		this.u_pass = u_pass;
		this.u_name = u_name;
		Phone = phone;
		Age = age;
		this.u_mail = u_mail;
	}

	public UserDetail(String u_id,String u_pass, String u_name, String address, String phone, int age,String u_mail,String u_ip,String u_time,String u_addtime) {
		super();
		this.u_id = u_id;
		this.u_pass=u_pass;
		this.u_name = u_name;
		this.Address = address;
		this.Phone = phone;
		this.Age = age;
		this.u_mail=u_mail;
		this.u_addtime=u_addtime;
		this.u_ip=u_ip;
		this.u_time=u_time;
		
	}
	
	public UserDetail(String u_id,String u_pass, String u_name, String address, String phone, int age,String u_mail,String u_addtime) {
		super();
		this.u_id = u_id;
		this.u_pass=u_pass;
		this.u_name = u_name;
		this.Address = address;
		this.Phone = phone;
		this.Age = age;
		this.u_mail=u_mail;
		this.u_addtime=u_addtime;
	}
	
	
	
	
	public String getU_addtime() {
		return u_addtime;
	}

	public void setU_addtime(String u_addtime) {
		this.u_addtime = u_addtime;
	}

	public String getU_ip() {
		return u_ip;
	}
	public void setU_ip(String u_ip) {
		this.u_ip = u_ip;
	}
	public String getU_time() {
		return u_time;
	}
	public void setU_time(String u_time) {
		this.u_time = u_time;
	}
	public String getU_mail() {
		return u_mail;
	}
	public void setU_mail(String u_mail) {
		this.u_mail = u_mail;
	}
	public String getU_pass() {
		return u_pass;
	}
	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
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
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}

	public int getEmail_state() {
		return email_state;
	}

	public void setEmail_state(int email_state) {
		this.email_state = email_state;
	}
	
	
  

}
