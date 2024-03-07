
package in.sp.main.controllers;
import java.util.*;

import org.hibernate.query.NativeQuery.ReturnableResultNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.cbor.KotlinSerializationCborEncoder;
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



import in.sp.main.entity.Employee;
import in.sp.main.service.Emplnterface;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class EmployeeMainController
{
	@Autowired
	private Emplnterface service;
	
	
	@GetMapping("/")
	public String indexPage()
	{
		return "home";
	}
	
	@GetMapping("/homepage")
	public String homePage()
	{
		return "home";
	}
	
	@GetMapping("/profileAdmin")
	public String openAdminProfilePage()
	{
		return "admin";
	}
	
	@GetMapping("/loginpage")
	public String loginPage()
	{
		return "login";
	}
	
	@GetMapping("/aboutUs")
	public String aboutUsPage()
	{
		return "aboutus";
	}
	
	
	@GetMapping("/contactUs")
	public String contactUsPage()
	{
		return "contactus";
	}
	
	@PostMapping("/loginForm")
	public String adminPage(@RequestParam("email1") String email,
			@RequestParam("pass1") String pass,Model model,HttpSession session)
	{
		String page="login";
		if(email.equals("vaibhav123@gmail.com") && pass.equals("vaibhav123@"))
		{
			page="admin";
			session.setAttribute("session_name","vaibhav ");
		}
		else
		{
			Employee emp = service.login(email);
			if(emp != null && emp.getPassword().equals(pass))
			{
				page="employee";
				session.setAttribute("session_name",emp.getName());
			}
			else
			{
				model.addAttribute("error", "Email and Password Did'nt Match");
				page = "login";
			}
		}
		return page;
	}
	

	@GetMapping("/listemp")
	public String employeeList(Model model)
	{
		List<Employee> list=service.getAllEmployeesService();
		model.addAttribute("emplist", list);
		return "employees-list";
	}
	
	
	@GetMapping("/addemp")
	public String addEmployees(Model model,Employee employee)
	{
		model.addAttribute("model-register", employee);
		return "empregister-form";
	}
	
	
	@PostMapping("/registerEmployee")
	public String registerEmployee(@Valid @ModelAttribute("model-register") Employee employee,BindingResult br,Model model)
	{
		String page="empregister-form";
		if(!br.hasErrors())
		{
			boolean b=service.addEmployeeService(employee);
			if(b)
			{
				 model.addAttribute("error","Employee Register Sucsesfully");
				 page="empregister-done";			
			}
			else
			{
				page="empregister-form";
			}
		}
		return page;
	}
	
	@PostMapping("/deleteEmp")
	public String deleteEmployee(@RequestParam("id") String id1,Model model)
	{
		int n=Integer.parseInt(id1.toString());
		boolean b=service.deleteId(n);;
			List<Employee> list=service.getAllEmployeesService();
			model.addAttribute("emplist", list);
			model.addAttribute("error","Employee Deleted Sucessfully");
		return "employees-list";
	}
	
	
	@PostMapping("/updateEmp")
	public String updateEmployee(@RequestParam("email") String email,Model model)
	{
		Employee employee1=service.updateEmployeeForm(email);
		model.addAttribute("model_emp", employee1);
		
		service.deleteEmployee(employee1);
		
		model.addAttribute("model-register",new Employee());
		return "empupdate-form";
	}
	

	@PostMapping("/updateEmployeeForm")
	public String updateEmployeeData(@Valid @ModelAttribute("model-register") Employee employee,BindingResult br,Model model)
	{
		String page="empupdate-form";
		if(!br.hasErrors()) 
		{
			boolean b=service.updateEmployeeData(employee);
			if(b)
			{
				 model.addAttribute("error","Employee Updated Sucsesfully");
				 page="empregister-done";			
			}
			else
			{
				page="empregister-form";
			}
		}
		return page;
	}
}
