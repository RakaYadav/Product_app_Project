package com.eyiron.product_app_project.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.eyiron.product_app_project.model.ProductUsers;

import jakarta.transaction.Transactional;

@Repository
public interface ProductUsersRepo extends JpaRepository<ProductUsers, Integer> {
	
	@Query("select a from ProductUsers a where a.email=:e and a.password=:p")
	public Optional<ProductUsers> getByEmailAndPassword(@Param("e") String email,@Param("p") String Password);

	public ProductUsers findByEmailAndPassword(String email,String password);
	
	
	@Modifying
	@Transactional
	@Query("delete from ProductUsers p where p.id=:id")
	public void deleteById(@Param("id") int id);
}
