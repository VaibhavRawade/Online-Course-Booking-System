package in.sp.main.controllers;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.sp.main.entity.CustomerEnq;
import in.sp.main.entity.Product;
import in.sp.main.service.CustomerInterface;
import in.sp.main.service.ProductInterface;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CustomerEnqController 
{
	@Autowired
	private CustomerInterface service;
	
	@Autowired
	private ProductInterface pservice;
	
	@GetMapping("/enquiryForm")
	public String customerEnquiryForm(Model model)
	{
		List<String> coursesList=pservice.getCourseList();
		model.addAttribute("courses_list",coursesList);
		
		model.addAttribute("model-attribute",new CustomerEnq());
		return "customerEnq-form";
	}
	
	@PostMapping("/registerCustomer")
	public String registerCustomer(@Valid @ModelAttribute("model-attribute") CustomerEnq customerEnq,
								   BindingResult br,Model model)
	{
		String page="customerEnq-form";
		if(!br.hasErrors())
		{
			boolean b=service.registerCustomer(customerEnq);
			if(b)
			{
				page="customerEnq-form";
				model.addAttribute("error","CustomerEnquiry Registered Sucsessfully");
			}
			else
			{
				page="customerEnq-form";
				model.addAttribute("error","CustomerEnquiry Not Registered Due to Some Error");
			}
		}
		return page;
	}
	
	@GetMapping("/customerfollowUp")
	public String customerFollowupPage(Model model)
	{
		List<CustomerEnq> list=service.getAllCustomer();
		model.addAttribute("listCustomer", list);
		return "customerfollowup";
	}
	
			
	@GetMapping("/saleCourse")
	public String openEmpHome(Model model)
	{
		List<Object[]> list = service.getPurchasedCourseCountService();
		model.addAttribute("intrested_course", list);
		
		return "salecourse";
	}
	

	@GetMapping("/purchasedCustomer")
	public String coursePurchasedPage(Model model)
	{
		String pageString="";
		
		boolean b=service.notPurchesedCustomer();
		System.out.println(b);
			List<CustomerEnq> list=service.getAllCustomer();
			model.addAttribute("listCustomer", list);
			
			return pageString="customer_page";
		
	}		
	
}
