package com.medicart.backend.doctor.controller;

import com.medicart.backend.doctor.entity.Prescription;
import com.medicart.backend.doctor.service.PrescriptionService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/prescriptions")
public class PrescriptionController {

    private final PrescriptionService prescriptionService;

    public PrescriptionController(PrescriptionService prescriptionService) {
        this.prescriptionService = prescriptionService;
    }

    // CREATE PRESCRIPTION
    @PostMapping
    public Prescription createPrescription(@RequestBody Prescription prescription) {
        return prescriptionService.save(prescription);
    }

    // GET PRESCRIPTION BY ID
    @GetMapping("/{id}")
    public Prescription getPrescriptionById(@PathVariable Long id) {
        return prescriptionService.findById(id).orElse(null);
    }
}
