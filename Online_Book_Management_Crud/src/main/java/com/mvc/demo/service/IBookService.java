package com.mvc.demo.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.mvc.demo.entity.Book;

public interface IBookService {
	
	public Book add(Book book);
	public List<Book> view();
public Book  searchBookById(Long id);

public void delete(Long id) ;



public Page<Book> viewBookByPage(int pageNo, int pagesize);


}
