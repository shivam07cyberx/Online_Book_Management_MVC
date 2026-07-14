package com.mvc.demo.service;

import java.util.List;

import org.hibernate.annotations.Audited;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.demo.entity.Book;
import com.mvc.demo.repo.IBookRepository;

@Service
public class BookService implements IBookService {
	
	@Autowired
	IBookRepository ibr;
	

	@Override
	public Book add(Book book) {
		// TODO Auto-generated method stub
		return ibr.save(book);
	}


	@Override
	public List<Book> view() {
		// TODO Auto-generated method stub
		
		
		
		
		return ibr.findAll();
		
		
	}


	@Override
	public Book searchBookById(Long id) {
		// TODO Auto-generated method stub
		return ibr.findById(id).orElse(null);
	}


	@Override
	public void delete(Long id) {
		
		
		
		
		
		
		
		 ibr.deleteById(id);
	}

}
