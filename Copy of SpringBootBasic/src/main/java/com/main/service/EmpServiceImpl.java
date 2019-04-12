package com.main.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.dao.EmpDaoInt;
import com.main.model.Employee;

@Service
@Transactional
public class EmpServiceImpl implements EmpServiceInt {
	@Autowired
    EmpDaoInt dao;

	public void saveEmp(Employee emp) {
		dao.saveEmp(emp);
		
	}

	
	public List<Employee> ListEmployee() {
		
		return dao.ListEmployee();
	}


	public Employee editEmployee(int id) {
		
		return dao.editEmployee(id);
	}


	@Override
	public void updateEmpl(Employee emp) {
		dao.updateEmpl(emp);
		
	}


	@Override
	public void deleteEmpl(int id) {
		dao.deleteEmpl(id);
		
	}

}
