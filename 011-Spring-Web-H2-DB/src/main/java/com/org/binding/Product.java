package com.org.binding;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Product {

	@Id
	@GeneratedValue
	private Integer id;
	private String productName;
	private Double price;
	private Integer quantity;
}
