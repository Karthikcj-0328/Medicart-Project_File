package com.medicart.backend.pharmacy.controller;

import com.medicart.backend.pharmacy.entity.Pharmacy;
import com.medicart.backend.pharmacy.service.PharmacyService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/pharmacies")
public class PharmacyController {

    private final PharmacyService pharmacyService;

    public PharmacyController(PharmacyService pharmacyService) {
        this.pharmacyService = pharmacyService;
    }

    // CREATE PHARMACY PROFILE
    @PostMapping
    public Pharmacy createPharmacy(@RequestBody Pharmacy pharmacy) {
        return pharmacyService.save(pharmacy);
    }

    // GET PHARMACY BY ID
    @GetMapping("/{id}")
    public Pharmacy getPharmacyById(@PathVariable Long id) {
        return pharmacyService.findById(id).orElse(null);
    }
}
