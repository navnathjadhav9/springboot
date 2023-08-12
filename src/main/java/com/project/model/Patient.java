package com.project.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "patient_appointment")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String patientname;
	private String appointmentTitle;

	@JsonFormat(pattern = "yyyy-MM-dd", shape = Shape.STRING)
	@Column(name = "aptdate")
	private String aptDate;

	private String timeSlot;

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public String getAppointmentTitle() {
		return appointmentTitle;
	}

	public void setAppointmentTitle(String appointmentTitle) {
		this.appointmentTitle = appointmentTitle;
	}

	public String getAptDate() {
		return aptDate;
	}

	public void setAptDate(String aptDate) {
		this.aptDate = aptDate;
	}

	public String getTimeSlot() {
		return timeSlot;
	}

	public void setTimeSlot(String timeSlot) {
		this.timeSlot = timeSlot;
	}

	@Override
	public String toString() {
		return "Patient [id=" + id + ", patientname=" + patientname + ", appointmentTitle=" + appointmentTitle
				+ ", aptDate=" + aptDate + ", timeSlot=" + timeSlot + "]";
	}

	public Patient() {
		super();
	}
	
	


}
