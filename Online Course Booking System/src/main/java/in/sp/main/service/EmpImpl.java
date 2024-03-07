package in.sp.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.main.dao.EmployeeRepository;
import in.sp.main.entity.Employee;
import jakarta.transaction.Transactional;

@Service
public class EmpImpl implements Emplnterface
{
	@Autowired
	EmployeeRepository dao;
	
	@Override
	public boolean addEmployeeService(Employee emp) 
	{
		boolean status = false;
		try
		{
			dao.save(emp);
			status = true;
		}
		catch(Exception e)
		{
			status = false;
			e.printStackTrace();
		}
		return status;
	}
	
	@Override
	public List<Employee> getAllEmployeesService()
	{
		List<Employee> list=dao.findAll();
		return list;
	}
	
	@Override
	public Employee login(String email)
	{
		Employee emp = dao.findByEmail(email);
		return emp;
	}
	
	@Override
	public boolean deleteId(int n)
	{
		boolean status=false;
		try
		{
			dao.deleteById(n);
			status=true;
		}
		catch (Exception e) 
		{
			status=false;
		}
		return status;
	}
	
	@Override
	public Employee updateEmployeeForm(String email)
	{
		Employee employee=dao.findByEmail(email);
		return employee;
	}
	
	@Override
	public boolean updateEmployeeData(Employee emp)
	{
		boolean b=false;
		try 
		{
			dao.save(emp);
			b=true;
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	
	@Override
	public void deleteEmployee(Employee emp)
	{
		dao.delete(emp);	
	}
}
