package com.eyiron.product_app_project.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eyiron.product_app_project.dao.AdminRepo;
import com.eyiron.product_app_project.model.Admin;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepo adminRepo;
	
	public Optional<Admin> validationService(String email,String password) {
		Optional<Admin>  admin= adminRepo.getByEmailAndPassword(email, password);
		 return admin;
	}
	
	

}
