package com.eyiron.product_app_project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eyiron.product_app_project.dao.ProductRepo;
import com.eyiron.product_app_project.model.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepo productRepo;
	
	//save all product details
	public void saveProductService(Product product) {
		productRepo.save(product);
		
	}
	
	
//	find all product details
	public List<Product> getAllProduct(){
		return productRepo.findAll();
	}
	
//	update product by id
	public void updateProductService(int id,Product product) {
		Optional<Product> optional =productRepo.findById(id);
		if(optional.isPresent()) {
			Product product1=optional.get();
			product1.setPid(id);
			product1.setName(product.getName());
			product1.setDescription(product.getDescription());
			product1.setPrice(product.getPrice());
			productRepo.save(product1);
		}
	}
	
	
//	find product by id
	public Optional<Product> getByIdService(int id){
		return  productRepo.findById(id);
	}
	
//	delete product by id
	public void deleteProductService(int id) {
		productRepo.deleteById(id);
		
	}



}
