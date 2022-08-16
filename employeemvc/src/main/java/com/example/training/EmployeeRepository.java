package com.example.training;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component //Creates object for EmployeeRepository
public class EmployeeRepository {
	private static List<Employee> database;
	static {
		database = new ArrayList<>();
		database.add(new Employee(100, "James Cooper", 12345.6, "Dev"));
		database.add(new Employee(200, "Steven King", 12345.6, "Test"));
	}
	
	public Employee findEmployeeById(Integer id) {
		for(Employee emp:database) {
			if(emp.getId().equals(id))
				return emp;
		}
		return null;
	}
	
	public List<Employee> getAllEmployees(){
		return database;
	}
	
	public void createEmployee(Employee emp) {
		database.add(emp);		
	}
	
	public void deleteEmployee(Integer empId) {
		for(int i=0; i<database.size(); i++) {
			if(database.get(i).getId().equals(empId))
				database.remove(i);
		}		
	}

	
}
