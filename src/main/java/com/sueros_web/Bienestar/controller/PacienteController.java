package com.sueros_web.Bienestar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.sueros_web.Bienestar.model.Paciente;
import com.sueros_web.Bienestar.repository.PacienteRepository;

@RestController
@RequestMapping("/api/pacientes")
public class PacienteController {

    @Autowired
    private PacienteRepository pacienteRepository;

    @PostMapping
    public ResponseEntity<String> guardarPaciente(@RequestBody Paciente paciente) {
        try {
            pacienteRepository.save(paciente);
            return ResponseEntity.ok("¡Paciente registrado en SQL Server con éxito!");
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Error en el servidor: " + e.getMessage());
        }
    }
}
