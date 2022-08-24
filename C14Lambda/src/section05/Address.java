package section05;

public class Address {
	private String country;
	private String city;
	
	public Address(String country, String city) {
		this.country = country;
		this.city = city;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public String getCity() {
		return this.city;
	}
}
