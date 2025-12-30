package com.medicart.backend.doctor.service;

import com.medicart.backend.doctor.entity.Appointment;
import com.medicart.backend.doctor.repository.AppointmentRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AppointmentService {

    private final AppointmentRepository appointmentRepository;

    public AppointmentService(AppointmentRepository appointmentRepository) {
        this.appointmentRepository = appointmentRepository;
    }

    public Appointment save(Appointment appointment) {
        return appointmentRepository.save(appointment);
    }

    public Optional<Appointment> findById(Long id) {
        return appointmentRepository.findById(id);
    }
}
