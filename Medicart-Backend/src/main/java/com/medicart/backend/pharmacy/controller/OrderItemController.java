package com.medicart.backend.pharmacy.controller;

import com.medicart.backend.pharmacy.entity.OrderItem;
import com.medicart.backend.pharmacy.service.OrderItemService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order-items")
public class OrderItemController {

    private final OrderItemService orderItemService;

    public OrderItemController(OrderItemService orderItemService) {
        this.orderItemService = orderItemService;
    }

    // CREATE ORDER ITEM
    @PostMapping
    public OrderItem createOrderItem(@RequestBody OrderItem orderItem) {
        return orderItemService.save(orderItem);
    }

    // GET ORDER ITEM BY ID
    @GetMapping("/{id}")
    public OrderItem getOrderItemById(@PathVariable Long id) {
        return orderItemService.findById(id).orElse(null);
    }
}
