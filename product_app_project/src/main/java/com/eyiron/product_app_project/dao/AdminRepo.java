package com.eyiron.product_app_project.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.eyiron.product_app_project.model.Admin;

@Repository
public interface AdminRepo extends JpaRepository<Admin, Integer>{
	
	@Query("select a from Admin a where a.email=:e and a.password=:p")
	public Optional<Admin> getByEmailAndPassword(@Param("e") String email,@Param("p") String Password);
	

}
