package com.mvc.demo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mvc.demo.entity.Book;
import com.mvc.demo.service.IBookService;

@Controller

public class BookController {
	@Autowired
	IBookService ibs;

	@GetMapping("/")
	public String nome() {
		
		
		return "book_home";
	}
	
	@GetMapping("/add_book_form")
	public String addBookForm() {
		
		return "add_book";
		
	}
	
	@PostMapping("/add")
	public String addBook(@ModelAttribute Book book, RedirectAttributes redi) {
		
		
		ibs.add(book);
		redi.addFlashAttribute
		("msg", "book Added successfully");
		
		return "redirect:/add_book_form";
		
	}
	
	@GetMapping("/view_books")
	public String viewAll(Model model) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("books", ibs.view());
		
	model.addAllAttributes(map);
	
	
	return "book_dashboard";
	
	
	
		
		
		
		

		
	}
	
	@GetMapping("/edit")
	public String editBookForm(@RequestParam Long id, Model model) {
		
		
		Book b=ibs.searchBookById(id);
		
		model.addAttribute("book", b);
		
		return "edit_book";
		
	}
	
	@PostMapping("/edit_book_details")
	public String editBookdetails(@ModelAttribute Book book, RedirectAttributes rda) {
		
	Book oldBook =ibs.searchBookById(book.getBookId());
	
	if(oldBook.equals(book)) {
		rda.addFlashAttribute("msg", "book details not changed ");
		
		return "redirect:/edit?id="+book.getBookId();
	}
	
	
	else {
		
		ibs.add(book);
		rda.addFlashAttribute("msg", "book edited successfully");
		
		return "redirect:/edit?id="+book.getBookId();
	
	}
	
		
	}
	
	@GetMapping("/search_book_form")
	public String searchBook() {
		
		return "search_book";
		
	}
	
	@GetMapping("/search")
	public String findSearchBook(@RequestParam Long id, Model model, RedirectAttributes rds) {
		
		Book b= ibs.searchBookById(id);
		if(b==null) {
			
			rds.addFlashAttribute("msg","book not found!");
			   System.out.println(b);
			   return "redirect:/search_book_form";
		}
		else {
			
			   model.addAttribute("book", b);
				rds.addFlashAttribute("book", b);

			   System.out.println(b);
			
			   return "redirect:/search_book_form";	
			   
		}
		
		
		
	}
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam Long id, RedirectAttributes ra) {
		
		ra.addFlashAttribute("msg", "record deleted");
		
		ibs.delete(id);
		
		return "redirect:/view_books";
		
	}
	
	@GetMapping("/error")
	public String error() {
		
		return "error";
		
		
	}
	
	
}
