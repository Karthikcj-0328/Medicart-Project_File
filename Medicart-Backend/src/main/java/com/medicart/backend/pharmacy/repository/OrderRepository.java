package com.medicart.backend.pharmacy.repository;

import com.medicart.backend.pharmacy.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
