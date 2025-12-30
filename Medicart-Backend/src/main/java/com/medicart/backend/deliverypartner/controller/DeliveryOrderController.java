package com.medicart.backend.deliverypartner.controller;

import com.medicart.backend.deliverypartner.entity.DeliveryOrder;
import com.medicart.backend.deliverypartner.service.DeliveryOrderService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/delivery-orders")
public class DeliveryOrderController {

    private final DeliveryOrderService deliveryOrderService;

    public DeliveryOrderController(DeliveryOrderService deliveryOrderService) {
        this.deliveryOrderService = deliveryOrderService;
    }

    // CREATE DELIVERY ORDER (ASSIGN DELIVERY PARTNER)
    @PostMapping
    public DeliveryOrder createDeliveryOrder(@RequestBody DeliveryOrder deliveryOrder) {
        return deliveryOrderService.save(deliveryOrder);
    }

    // GET DELIVERY ORDER BY ID
    @GetMapping("/{id}")
    public DeliveryOrder getDeliveryOrderById(@PathVariable Long id) {
        return deliveryOrderService.findById(id).orElse(null);
    }
}
