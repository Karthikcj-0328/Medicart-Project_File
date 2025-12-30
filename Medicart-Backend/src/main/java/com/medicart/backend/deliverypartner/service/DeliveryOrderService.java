package com.medicart.backend.deliverypartner.service;

import com.medicart.backend.deliverypartner.entity.DeliveryOrder;
import com.medicart.backend.deliverypartner.repository.DeliveryOrderRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeliveryOrderService {

    private final DeliveryOrderRepository deliveryOrderRepository;

    public DeliveryOrderService(DeliveryOrderRepository deliveryOrderRepository) {
        this.deliveryOrderRepository = deliveryOrderRepository;
    }

    public DeliveryOrder save(DeliveryOrder deliveryOrder) {
        return deliveryOrderRepository.save(deliveryOrder);
    }

    public Optional<DeliveryOrder> findById(Long id) {
        return deliveryOrderRepository.findById(id);
    }
}
