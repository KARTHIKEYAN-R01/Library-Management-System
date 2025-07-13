package com.example.librarymanage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.librarymanage.entity.BooksEntity;
import com.example.librarymanage.rep.Bookrepo;

@Controller
public class BookController {

    @Autowired
    private Bookrepo bookrepo;

    @GetMapping("/viewbooks")
    public String viewBooks(Model model) {
        List<BooksEntity> books = bookrepo.findAll();
        model.addAttribute("books", books);
        return "views/Books"; // Books.jsp
    }

    @GetMapping("/addbooks")
    public String showAddBooksForm(Model model) {
        model.addAttribute("book", new BooksEntity());
        return "views/addbooks"; // addbooks.jsp
    }

    @PostMapping("/addbooks")
    public String addBook(@ModelAttribute("book") BooksEntity book) {
        bookrepo.save(book);
        return "redirect:/views/viewbooks";
    }

    @GetMapping("/editbook/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        BooksEntity book = bookrepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid book ID: " + id));
        model.addAttribute("book", book);
        return "views/editbook"; // editbook.jsp
    }

    @PostMapping("/updatebook/{id}")
    public String updateBook(@PathVariable("id") Long id, @ModelAttribute("book") BooksEntity bookDetails) {
        BooksEntity book = bookrepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid book ID: " + id));
        book.setTitle(bookDetails.getTitle());
        book.setAuthor(bookDetails.getAuthor());
        book.setGenre(bookDetails.getGenre());
        book.setYearPublished(bookDetails.getYearPublished());
        bookrepo.save(book);
        return "redirect:/views/viewbooks";
    }

    @GetMapping("/deletebook/{id}")
    public String deleteBook(@PathVariable("id") Long id) {
        bookrepo.deleteById(id);
        return "redirect:/views/viewbooks";
    }
}
