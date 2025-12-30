package com.medicart.backend.doctor.service;

import com.medicart.backend.doctor.entity.Prescription;
import com.medicart.backend.doctor.repository.PrescriptionRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PrescriptionService {

    private final PrescriptionRepository prescriptionRepository;

    public PrescriptionService(PrescriptionRepository prescriptionRepository) {
        this.prescriptionRepository = prescriptionRepository;
    }

    public Prescription save(Prescription prescription) {
        return prescriptionRepository.save(prescription);
    }

    public Optional<Prescription> findById(Long id) {
        return prescriptionRepository.findById(id);
    }
}
