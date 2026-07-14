package com.mvc.demo.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
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
	@SequenceGenerator(name="gen1", sequenceName = "book_seq", allocationSize = 1,initialValue = 10)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private Long bookId;
	
	@NonNull
	private String bookTitle;
	@NonNull
	private String category;
	@NonNull
	private  Double price;
	@NonNull
	private String publisher;
	@NonNull
	public LocalDate publishDate;
	@NonNull
	public Integer stockQuantity;
	
	
}
