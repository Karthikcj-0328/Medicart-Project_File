package com.medicart.backend.pharmacy.service;

import com.medicart.backend.pharmacy.entity.Pharmacy;
import com.medicart.backend.pharmacy.repository.PharmacyRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PharmacyService {

    private final PharmacyRepository pharmacyRepository;

    public PharmacyService(PharmacyRepository pharmacyRepository) {
        this.pharmacyRepository = pharmacyRepository;
    }

    public Pharmacy save(Pharmacy pharmacy) {
        return pharmacyRepository.save(pharmacy);
    }

    public Optional<Pharmacy> findById(Long id) {
        return pharmacyRepository.findById(id);
    }
}
