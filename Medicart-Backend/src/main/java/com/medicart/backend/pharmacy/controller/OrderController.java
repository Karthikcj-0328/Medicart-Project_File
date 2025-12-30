package com.medicart.backend.pharmacy.controller;

import com.medicart.backend.pharmacy.entity.Order;
import com.medicart.backend.pharmacy.service.OrderService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    // CREATE ORDER
    @PostMapping
    public Order createOrder(@RequestBody Order order) {
        return orderService.save(order);
    }

    // GET ORDER BY ID
    @GetMapping("/{id}")
    public Order getOrderById(@PathVariable Long id) {
        return orderService.findById(id).orElse(null);
    }
}
