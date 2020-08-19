package com.cardealership;

import java.util.Date;

public class Customer {
	
	private String firstName;
	private String lastName;
	private String socialSecurity;
	private String email;
	private Car carPurchased;
	private Date purchaseDate;
	
	public Customer() {}
	
	public Customer(String firstName, String lastName, String socialSecurity, String email, Car carPurchased, Date purchaseDate) {
		this.firstName=firstName;
		this.lastName=lastName;
		this.socialSecurity=socialSecurity;
		this.email=email;
		this.carPurchased=carPurchased;
		this.purchaseDate=purchaseDate;
		
	}
	public Customer(String firstName, String lastName, String socialSecurity, Car carPurchased, Date purchaseDate) {
		this.firstName=firstName;
		this.lastName=lastName;
		this.socialSecurity=socialSecurity;
		this.carPurchased=carPurchased;
		this.purchaseDate=purchaseDate;
		
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getSocialSecurity() {
		return socialSecurity;
	}

	public void setSocialSecurity(String socialSecurity) {
		this.socialSecurity = socialSecurity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Car getCarPurchased() {
		return carPurchased;
	}

	public void setCarPurchased(Car carPurchased) {
		this.carPurchased = carPurchased;
	}

	public Date getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
	//Override toString method
	public String toString() {
		return this.firstName + " " + this.lastName + ", " + this.carPurchased.getMake() + " " + this.carPurchased.getModel();
	}

}
