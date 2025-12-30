package com.medicart.backend.deliverypartner.repository;

import com.medicart.backend.deliverypartner.entity.DeliveryOrder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeliveryOrderRepository extends JpaRepository<DeliveryOrder, Long> {
}
