package com.codingdojo.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.services.BookService;

@Controller
@RequestMapping("/books")
public class BooksController {
	private final BookService bookService;
	
	public BooksController(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping("")
	public String books(Model model) {
		List<Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		return "books.jsp";
	}
	
	@RequestMapping("/new")
	public String newBooks(@ModelAttribute("book") Book book) {
		return "newBooks.jsp";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if(result.hasErrors()) {
			return "newBooks.jsp";
		}
		else {
			bookService.createBook(book);
			return "redirect:/books";
		}
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String displayBook(Model model, @PathVariable("id") Long id) {
		Book book = bookService.findBook(id);
		model.addAttribute("book", book);
		return "displayBook.jsp";
	}
	
	@RequestMapping(value="/{id}/delete", method=RequestMethod.POST)
	public String deleteBook(Model model, @PathVariable("id") Long id) {
		bookService.deleteBook(id);
		return "redirect:/books";
	}
	
	@RequestMapping("/{id}/edit")
	public String editBook(@PathVariable("id") Long id, Model model) {
		Book book = bookService.findBook(id);
		model.addAttribute("book", book);
		return "editBook.jsp";
	}
	
	@RequestMapping(value="/{id}/update", method=RequestMethod.POST)
	public String update(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if(result.hasErrors()) {
			return "/books/edit.jsp";
		}
		else {
			bookService.updateBook(book);
			return "redirect:/books";
		}
	}
}
