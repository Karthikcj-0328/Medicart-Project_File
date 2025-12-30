package com.medicart.backend.doctor.controller;

import com.medicart.backend.doctor.entity.Doctor;
import com.medicart.backend.doctor.service.DoctorService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/doctors")
public class DoctorController {

    private final DoctorService doctorService;

    public DoctorController(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    // CREATE DOCTOR PROFILE
    @PostMapping
    public Doctor createDoctor(@RequestBody Doctor doctor) {
        return doctorService.save(doctor);
    }

    // GET DOCTOR BY ID
    @GetMapping("/{id}")
    public Doctor getDoctorById(@PathVariable Long id) {
        return doctorService.findById(id).orElse(null);
    }
}
