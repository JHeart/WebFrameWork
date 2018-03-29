package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor

public class Order {//DTO
	private String cardNum;
	private String cardType;
	private String price;
	private String initial;
	private String itemNum;
	private String address;
	private String firstName;
	private String LastName;
	private String description;
	
}
