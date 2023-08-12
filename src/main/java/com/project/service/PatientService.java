package com.project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Patient;
import com.project.repository.PatientRepository;

@Service
public class PatientService {

	@Autowired
	private PatientRepository repo;

	public void AddPatient(Patient p) {
	
		repo.save(p);

	}

	public List<Patient> getAllPatient() {
		return repo.findAll();

	}

	public Patient editPatient(int id) {
		Optional<Patient> p = repo.findById(id);
		if (p.isPresent()) {
			return p.get();
		}
		return null;
	}

	public void deletePatient(int id) {
		repo.deleteById(id);
	}

	    
}
