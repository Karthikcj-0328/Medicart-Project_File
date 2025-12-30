package com.medicart.backend.pharmacy.repository;

import com.medicart.backend.pharmacy.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
