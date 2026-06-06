package com.sueros_web.Bienestar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.sueros_web.Bienestar.model.Paciente;

@Repository
public interface PacienteRepository extends JpaRepository<Paciente, Long> {
} // No se necesitan métodos adicionales, JpaRepository ya proporciona los métodos
  // CRUD básicos como save(), findById(), findAll(), deleteById(), etc.