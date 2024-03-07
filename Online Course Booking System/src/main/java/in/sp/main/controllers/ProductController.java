package in.sp.main.controllers;

import in.sp.main.entity.*;
import in.sp.main.service.ProductInterface;
import jakarta.validation.Valid;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController
{
	@Autowired
	private ProductInterface service;
	
	@GetMapping("/addprd")
	public String addProduct(Model model)
	{
		model.addAttribute("model-register",new Product());
		return "prdregister-form";
	}
	
	@PostMapping("/registerProduct")
	public String registerProduct(@Valid @ModelAttribute("model-register") Product product,BindingResult br,Model model)
	{
		String page="prdregister-form";
		if(!br.hasErrors())
		{
			boolean b=service.addProduct(product);
			if(b)
			{
				 model.addAttribute("error","Product Added Sucsesfully");
				 page="prdregister-done";			
			}
			else
			{
				page="prdregister-form";
			}
		}
		return page;
	}
	
	@GetMapping("/listprd")
	public String getAllProducts(Model model)
	{
		List<Product> list=service.getAllProductsService();
		model.addAttribute("prdlist", list);
		return "products-list";
	}
	
	
	@PostMapping("/prdDetails")
	public String deleteEmployee(@RequestParam("id") String id1,Model model)
	{
		int n=Integer.parseInt(id1.toString());
		Product product1=service.getSingleProductDetails(n);
		
		model.addAttribute("product",product1);
		return "product-data";
	}
	
	
	@PostMapping("/updatePrd")
	public String updateProduct(@RequestParam("id") String id1,Model model)
	{
		int n=Integer.parseInt(id1.toString());
		Product product1=service.updateProductForm(n);
		model.addAttribute("model_prd",product1);
		
		service.deleteProduct(product1);
		
		model.addAttribute("model-register",new Product());
		return "prdupdate-form";
	}
	

	@PostMapping("/updateProductForm")
	public String updateProductData(@Valid @ModelAttribute("model-register") Product product,BindingResult br,Model model)
	{
		String page="prdupdate-form";
		if(!br.hasErrors()) 
		{
			boolean b=service.updateProductData(product);
			if(b)
			{
				 model.addAttribute("error","Product Updated Sucsesfully");
				 page="prdregister-done";			
			}
			else
			{
				page="prdregister-form";
			}
		}
		return page;
	}
	
	@PostMapping("/deletePrd")
	public String deleteProduct(@RequestParam("id") String id1,Model model)
	{
		int n=Integer.parseInt(id1.toString());
		Product product1=service.deleteProductForm(n);
		
		service.deleteProduct(product1);
		
		List<Product> list=service.getAllProductsService();
		model.addAttribute("prdlist", list);
		model.addAttribute("error","Product Deleted Sucessfully");
		return "products-list";
	}
		
}
