package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.project.model.Patient;
import com.project.service.PatientService;

@Controller
public class HomeController {

	@Autowired
	private PatientService service;

	@GetMapping("/")
	public String Home() {
		
		return "HomePage";
	}

	@GetMapping("/addpatient")
	public String AddPatient() {
		return "Add_Patient";
	}

	@PostMapping("/register")
	public String PatienetRegister(Patient p) {
		service.AddPatient(p);
		System.out.println(p);

		return "index";
	}

	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model m) {
		Patient p = service.editPatient(id);
		m.addAttribute("patient", p);
		return "edit";
	}

	@PostMapping("/update")
	public String update(Patient p) {
		service.AddPatient(p);

		return "index";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		service.deletePatient(id);
		return "index";
	}

	
	// additional
	
	@GetMapping("/userlogin")
	public String userLogin() {
		return "user_login";
	}
	
	@PostMapping("/user")
	public String AddUser(Model m) {
		List<Patient> p = service.getAllPatient();
		m.addAttribute("patient", p);

		return "Add_Patient";
	}
	
	

	
	@GetMapping("/summaryPage")
	public String SummaryPage(Model m)
	{
		List<Patient> p = service.getAllPatient();
		m.addAttribute("patient", p);
		return "summary_page";
	}
	
	
	
	
	
	
	
}
