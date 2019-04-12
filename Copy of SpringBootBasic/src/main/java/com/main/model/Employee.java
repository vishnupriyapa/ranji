package com.main.model;

import javax.persistence.*;

@Entity
@Table(name="emp")
public class Employee {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
public int empId;
public String empName;
public String city;
public String phoneNum;
public String email;
public String password;
public String confirmPassword;
public Employee() {
	super();
}
public int getEmpId() {
	return empId;
}
public void setEmpId(int empId) {
	this.empId = empId;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getConfirmPassword() {
	return confirmPassword;
}
public void setConfirmPassword(String confirmPassword) {
	this.confirmPassword = confirmPassword;
}
public String getEmpName() {
	return empName;
}
public void setEmpName(String empName) {
	this.empName = empName;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getPhoneNum() {
	return phoneNum;
}
public void setPhoneNum(String phoneNum) {
	this.phoneNum = phoneNum;
}
public Employee(int empId, String empName, String city, String phoneNum) {
	super();
	this.empId = empId;
	this.empName = empName;
	this.city = city;
	this.phoneNum = phoneNum;
}

}
