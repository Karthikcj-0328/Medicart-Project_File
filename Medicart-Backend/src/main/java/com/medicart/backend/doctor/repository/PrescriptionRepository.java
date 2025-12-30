package com.medicart.backend.doctor.repository;

import com.medicart.backend.doctor.entity.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {
}
