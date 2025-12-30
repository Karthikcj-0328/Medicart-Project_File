package com.medicart.backend.pharmacy.repository;

import com.medicart.backend.pharmacy.entity.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
}
