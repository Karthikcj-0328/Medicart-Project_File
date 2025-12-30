package com.medicart.backend.pharmacy.service;

import com.medicart.backend.pharmacy.entity.OrderItem;
import com.medicart.backend.pharmacy.repository.OrderItemRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class OrderItemService {

    private final OrderItemRepository orderItemRepository;

    public OrderItemService(OrderItemRepository orderItemRepository) {
        this.orderItemRepository = orderItemRepository;
    }

    public OrderItem save(OrderItem orderItem) {
        return orderItemRepository.save(orderItem);
    }

    public Optional<OrderItem> findById(Long id) {
        return orderItemRepository.findById(id);
    }
}
