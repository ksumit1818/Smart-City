package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "record")
public class Record {

	@Id
	@Column(name = "familyId")
	private int familyId;

	private String firstName;

	private String middleName;

	private String lastName;

	private String contact;

	private String nationality;

	private String state;

	private String district;

	private String city;

	private int ward;

	private String gender;

	private Date date;

	public int getFamilyId() {
		return familyId;
	}

	public void setFamilyId(int familyId) {
		this.familyId = familyId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getWard() {
		return ward;
	}

	public void setWard(int ward) {
		this.ward = ward;
	}

	public String isGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Record(int familyId, String firstName, String middleName, String lastName, String contact, String nationality,
			String state, String district, String city, int ward, String gender, Date date) {
		super();
		this.familyId = familyId;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.contact = contact;
		this.nationality = nationality;
		this.state = state;
		this.district = district;
		this.city = city;
		this.ward = ward;
		this.gender = gender;
		this.date = date;
	}

	public Record() {
		super();
	}

}
