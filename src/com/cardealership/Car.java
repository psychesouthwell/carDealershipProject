package com.cardealership;

import java.time.LocalDate;
import java.time.Period;
import java.time.temporal.ChronoUnit;


public class Car {

	private String make;
	private String model;
	private String year;
	private String mileage;
	private String type;             //Types: New || Used
	private String vinNumber; 
	private double price;
	private LocalDate dateAcquired;
	private String pic;
	
	public Car() {}       //default constructor
	
	//Parameterized constructor
	public Car(String make, String model, String year, String mileage, String type, String vinNumber, double price, String pic) {
		this.make=make;
		this.model=model;
		this.year=year;
		this.mileage=mileage;
		this.type=type;
		this.vinNumber=vinNumber;
		this.price=price;
		this.pic=pic;
	}
	
	public Car(String make, String model, String year, String mileage, String type, String vinNumber) {
		this.make=make;
		this.model=model;
		this.year=year;
		this.mileage=mileage;
		this.type=type;
		this.vinNumber=vinNumber;
	
	}
	

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMileage() {
		return mileage;
	}

	public void setMileage(String mileage) {
		this.mileage = mileage;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getVinNumber() {
		return vinNumber;
	}

	public void setVinNumber(String vinNumber) {
		this.vinNumber = vinNumber;
	}
	
	
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	public LocalDate getDateAcquired() {
		return dateAcquired;
	}

	public void setDateAcquired(LocalDate dateAcquired) {
		this.dateAcquired = dateAcquired;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
	//Create method to easily check car eligibility for discount later
	public boolean isOldInventory() {
		
		LocalDate date = LocalDate.now();
		long days = ChronoUnit.DAYS.between(dateAcquired, date);
		if(days > 120) {
			 return true;
		}
		else {
			return false;
		}
		
	}
	
}
