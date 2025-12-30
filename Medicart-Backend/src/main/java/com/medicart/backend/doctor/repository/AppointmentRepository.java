package com.medicart.backend.doctor.repository;

import com.medicart.backend.doctor.entity.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppointmentRepository extends JpaRepository<Appointment, Long> {
}
