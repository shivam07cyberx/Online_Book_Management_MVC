package com.mvc.demo.service;

import java.util.List;

import com.mvc.demo.entity.Book;

public interface IBookService {
	
	public Book add(Book book);
	public List<Book> view();
public Book  searchBookById(Long id);

public void delete(Long id) ;
}
