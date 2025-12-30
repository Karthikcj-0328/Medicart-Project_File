package com.medicart.backend.deliverypartner.controller;

import com.medicart.backend.deliverypartner.entity.DeliveryPartner;
import com.medicart.backend.deliverypartner.service.DeliveryPartnerService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/delivery-partners")
public class DeliveryPartnerController {

    private final DeliveryPartnerService deliveryPartnerService;

    public DeliveryPartnerController(DeliveryPartnerService deliveryPartnerService) {
        this.deliveryPartnerService = deliveryPartnerService;
    }

    // CREATE DELIVERY PARTNER PROFILE
    @PostMapping
    public DeliveryPartner createDeliveryPartner(@RequestBody DeliveryPartner deliveryPartner) {
        return deliveryPartnerService.save(deliveryPartner);
    }

    // GET DELIVERY PARTNER BY ID
    @GetMapping("/{id}")
    public DeliveryPartner getDeliveryPartnerById(@PathVariable Long id) {
        return deliveryPartnerService.findById(id).orElse(null);
    }
}
