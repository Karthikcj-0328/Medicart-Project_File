package com.medicart.backend.doctor.service;

import com.medicart.backend.doctor.entity.Doctor;
import com.medicart.backend.doctor.repository.DoctorRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DoctorService {

    private final DoctorRepository doctorRepository;

    public DoctorService(DoctorRepository doctorRepository) {
        this.doctorRepository = doctorRepository;
    }

    public Doctor save(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    public Optional<Doctor> findById(Long id) {
        return doctorRepository.findById(id);
    }
}
