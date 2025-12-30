package com.medicart.backend.deliverypartner.entity;

import com.medicart.backend.pharmacy.entity.Order;
import jakarta.persistence.*;

@Entity
@Table(name = "delivery_orders")
public class DeliveryOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "order_id", nullable = false)
    private Order order;

    @ManyToOne
    @JoinColumn(name = "delivery_partner_id", nullable = false)
    private DeliveryPartner deliveryPartner;

    private String status; // ASSIGNED, PICKED, DELIVERED
}
