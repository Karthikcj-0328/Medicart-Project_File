package com.medicart.backend.deliverypartner.service;

import com.medicart.backend.deliverypartner.entity.DeliveryPartner;
import com.medicart.backend.deliverypartner.repository.DeliveryPartnerRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeliveryPartnerService {

    private final DeliveryPartnerRepository deliveryPartnerRepository;

    public DeliveryPartnerService(DeliveryPartnerRepository deliveryPartnerRepository) {
        this.deliveryPartnerRepository = deliveryPartnerRepository;
    }

    public DeliveryPartner save(DeliveryPartner deliveryPartner) {
        return deliveryPartnerRepository.save(deliveryPartner);
    }

    public Optional<DeliveryPartner> findById(Long id) {
        return deliveryPartnerRepository.findById(id);
    }
}
