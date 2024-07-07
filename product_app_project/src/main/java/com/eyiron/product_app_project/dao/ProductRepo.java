package com.eyiron.product_app_project.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.eyiron.product_app_project.model.Product;

import jakarta.transaction.Transactional;

@Repository
public interface ProductRepo extends JpaRepository<Product, Integer> {
	@Modifying
	@Transactional
	@Query("delete from Product p where p.pid=:id")
	public void deleteById(@Param("id") int id);
}
