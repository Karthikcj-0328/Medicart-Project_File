package com.medicart.backend.pharmacy.entity;

import com.medicart.backend.shared.entity.User;
import jakarta.persistence.*;

@Entity
@Table(name = "pharmacies")
public class Pharmacy {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    private String shopName;
    private String location;
}
