package com.main.service;

import java.util.List;

import com.main.model.Employee;

public interface EmpServiceInt {

	void saveEmp(Employee emp);

	List<Employee> ListEmployee();

	Employee editEmployee(int id);

	void updateEmpl(Employee emp);

	void deleteEmpl(int id);

}
