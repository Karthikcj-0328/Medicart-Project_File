package com.medicart.backend.pharmacy.repository;

import com.medicart.backend.pharmacy.entity.Stock;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StockRepository extends JpaRepository<Stock, Long> {
}
