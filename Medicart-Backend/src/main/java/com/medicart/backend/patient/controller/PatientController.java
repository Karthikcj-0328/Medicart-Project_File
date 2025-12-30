package com.medicart.backend.patient.controller;

import com.medicart.backend.patient.entity.Patient;
import com.medicart.backend.patient.service.PatientService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/patients")
public class PatientController {

    private final PatientService patientService;

    public PatientController(PatientService patientService) {
        this.patientService = patientService;
    }

    // CREATE PATIENT PROFILE
    @PostMapping
    public Patient createPatient(@RequestBody Patient patient) {
        return patientService.save(patient);
    }

    // GET PATIENT BY ID
    @GetMapping("/{id}")
    public Patient getPatientById(@PathVariable Long id) {
        return patientService.findById(id).orElse(null);
    }
}
