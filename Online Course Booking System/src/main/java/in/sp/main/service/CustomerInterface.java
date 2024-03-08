package in.sp.main.service;

import java.util.List;

import in.sp.main.entity.CustomerEnq;

public interface CustomerInterface 
{
	public boolean registerCustomer(CustomerEnq customerEnq);
	
	public List<CustomerEnq> getAllCustomer();
	
	public List<Object[]> getPurchasedCourseCountService();
	
	
	public boolean notPurchesedCustomer();
}
