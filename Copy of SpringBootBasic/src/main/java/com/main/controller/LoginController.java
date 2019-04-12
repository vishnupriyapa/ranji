package com.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.main.model.Employee;
import com.main.service.EmpServiceInt;

@RestController
public class LoginController {
	@Autowired
	EmpServiceInt service;
	
@RequestMapping("/")
public ModelAndView hello()
{
	return new ModelAndView("home");
}

@RequestMapping("/Emp")
public ModelAndView empPage(@ModelAttribute("emp") Employee emp)
{
	return new ModelAndView("EmpPage");
}

@RequestMapping("/save")
public ModelAndView save(@ModelAttribute("emp") Employee emp)
{
	service.saveEmp(emp);
	return new ModelAndView("redirect:/listEmployee");
}

@RequestMapping("/listEmployee")
public ModelAndView listEmp()
{
    List<Employee> ls=service.ListEmployee();
	return new ModelAndView("ListEmp","ls",ls);
}

@RequestMapping("/edit")
public ModelAndView editEmp(HttpServletRequest request,@ModelAttribute("emp") Employee emp)
{
	List<Employee> ls=service.ListEmployee();
	int id=Integer.parseInt(request.getParameter("id"));
    Employee emp1=service.editEmployee(id);
    System.out.println(emp1.empName);
	ModelAndView m= new ModelAndView("EditPage","ls",ls);
	m.addObject("empl", emp1);
	return m;
}

@RequestMapping("/update")
public ModelAndView updateEmp(HttpServletRequest request,@ModelAttribute("emp") Employee emp)
{
	service.updateEmpl(emp);
	return new ModelAndView("redirect:/listEmployee");
	
}

@RequestMapping("/delete")
public ModelAndView deleteEmp(HttpServletRequest request,@ModelAttribute("emp") Employee emp)
{
	int id=Integer.parseInt(request.getParameter("id"));
	service.deleteEmpl(id);
	return new ModelAndView("redirect:/listEmployee");
	
}
}
