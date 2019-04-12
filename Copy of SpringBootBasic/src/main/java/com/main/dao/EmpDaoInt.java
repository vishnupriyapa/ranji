package com.main.dao;

import java.util.List;

import com.main.model.Employee;

public interface EmpDaoInt {

	void saveEmp(Employee emp);

	List<Employee> ListEmployee();

	Employee editEmployee(int id);

	void updateEmpl(Employee emp);

	void deleteEmpl(int id);

}
