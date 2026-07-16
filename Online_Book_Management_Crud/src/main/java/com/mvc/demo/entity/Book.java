package com.mvc.demo.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Table(name="jpa_book")
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Long bookId;
	
	@NonNull
	private String bookTitle;
	@NonNull
	private String category;
	@NonNull
	@Min(value = 50)
	@Max(value=99999)
	private  Double price;
	@NonNull
	private String publisher;
	@NonNull
	public LocalDate publishDate;
	@NonNull
	@Min(value = 1)
	@Max(value=999)
	public Integer stockQuantity;
	
	
}
