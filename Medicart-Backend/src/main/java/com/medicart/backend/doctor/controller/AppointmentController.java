package com.medicart.backend.doctor.controller;

import com.medicart.backend.doctor.entity.Appointment;
import com.medicart.backend.doctor.service.AppointmentService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/appointments")
public class AppointmentController {

    private final AppointmentService appointmentService;

    public AppointmentController(AppointmentService appointmentService) {
        this.appointmentService = appointmentService;
    }

    // CREATE APPOINTMENT
    @PostMapping
    public Appointment createAppointment(@RequestBody Appointment appointment) {
        return appointmentService.save(appointment);
    }

    // GET APPOINTMENT BY ID
    @GetMapping("/{id}")
    public Appointment getAppointmentById(@PathVariable Long id) {
        return appointmentService.findById(id).orElse(null);
    }
}
