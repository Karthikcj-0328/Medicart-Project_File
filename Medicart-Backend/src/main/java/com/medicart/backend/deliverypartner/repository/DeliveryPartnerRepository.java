package com.medicart.backend.deliverypartner.repository;

import com.medicart.backend.deliverypartner.entity.DeliveryPartner;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeliveryPartnerRepository extends JpaRepository<DeliveryPartner, Long> {
}
