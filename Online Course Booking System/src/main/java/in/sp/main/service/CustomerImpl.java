package in.sp.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.main.dao.CustomerRepository;
import in.sp.main.dao.ProductRepository;
import in.sp.main.entity.CustomerEnq;

@Service
public class CustomerImpl implements CustomerInterface
{
	@Autowired
	private CustomerRepository dao;
	
	
	public boolean registerCustomer(CustomerEnq customerEnq)
	{
		boolean b=false;
		try 
		{
			dao.save(customerEnq);
			b=true;
		} 
		catch (Exception e) 
		{
			b=false;
			e.printStackTrace();
		}
		return b;
	}
	
	
	public List<CustomerEnq> getAllCustomer()
	{
		List<CustomerEnq> list;
		try
		{
			list=dao.findAll();
		}
		catch (Exception e) 
		{
			list=null;
			e.printStackTrace();
		}
		return list;
	}
	

	public List<Object[]> getPurchasedCourseCountService()
	{
		 List<Object[]> list=dao.countByPurchasedCourse();
	   	return list;
	}
}
