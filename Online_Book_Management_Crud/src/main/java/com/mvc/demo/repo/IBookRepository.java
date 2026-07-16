package com.mvc.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mvc.demo.entity.Book;

public interface IBookRepository extends JpaRepository<Book, Long>{

}



