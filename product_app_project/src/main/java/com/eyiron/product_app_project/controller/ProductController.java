package com.eyiron.product_app_project.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.eyiron.product_app_project.model.Product;
import com.eyiron.product_app_project.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;

	@PostMapping("/handle-product")
	public RedirectView handleProduct(@ModelAttribute Product product,RedirectView redirectView) {
		productService.saveProductService(product);
		redirectView.setUrl("homePage");
		return redirectView;
	}
	//home page where all product 
	@GetMapping("/homePage")
	public String home(Model model) {
		// fatch data from db
		List<Product> allProduct = productService.getAllProduct();
		model.addAttribute("product", allProduct);
		return "homePage";

	}
	
	
	// find product details and set product in model
	@GetMapping("/updateProduct/{id}")
	public String updatePage(@PathVariable("id") int id ,Model model,HttpServletRequest request) {
		Optional<Product> optional= productService.getByIdService(id);
		if(optional.isPresent()) {
			  Product product = optional.get();
	            model.addAttribute("Product", product);
	            return request.getContextPath()+"updateProduct";			
		}else {
			return "product is not found";
		}
		
	}
	
	// find product by id and update that product
	@PostMapping("/updateProduct/processUpdate/{id}")
	public RedirectView updateProduct(@PathVariable("id") int id,@ModelAttribute Product product,HttpServletRequest request ) {
		productService.updateProductService(id, product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath() +"/homePage");
		return redirectView; 
	}
	
	//delete product by id
	@GetMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int id,RedirectView redirectView,HttpServletRequest request) {
		productService.deleteProductService(id);
		redirectView.setUrl(request.getContextPath() +"/homePage");
		return redirectView;
	}
	
	
	


}
