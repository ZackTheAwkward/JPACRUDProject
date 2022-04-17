package com.skilldistillery.breweries.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Brewery {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String city;
	private String state;
	private String url;
	private double latitude;
	private double longitude;

	
	public Brewery() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	@Override
	public String toString() {
		return "Brewery ID: " + id + " Name: " + name + " City: " + city + " State: " + state + " URL: " + url
				+ " Latitude: " + latitude + " Longitude: " + longitude;
	}

	public Brewery(int id, String name, String city, String state, String url, double latitude, double longitude) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.state = state;
		this.url = url;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	
	
	
	
}
