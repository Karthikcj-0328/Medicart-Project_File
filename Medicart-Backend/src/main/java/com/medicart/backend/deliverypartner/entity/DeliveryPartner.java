package com.medicart.backend.deliverypartner.entity;

import com.medicart.backend.shared.entity.User;
import jakarta.persistence.*;

@Entity
@Table(name = "delivery_partners")
public class DeliveryPartner {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    private String vehicleNumber;
}
